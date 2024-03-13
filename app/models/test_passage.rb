class TestPassage < ApplicationRecord
  @@success_test_passages = []
  PASS = 85

  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true
  before_validation :before_validation_set_question, on: [:create, :update]


  def actual_question
    return (test.questions.index(current_question) + 1)
  end

  def completed?
    current_question.nil?
  end

  def accept!(answer_ids)
    if correct_answer?(answer_ids)
      self.correct_questions += 1
    end
    save!
  end

  def success?
    score >= PASS
  end

  def score
    (correct_questions * 100) / test.questions.count
  end

  def self.success_test_passages
    @@success_test_passages
  end

  private

  def before_validation_set_question
    if (test.present?) && (self.current_question == nil)
      self.current_question = test.questions.first
    else
      self.current_question = next_question if self.current_question
    end
  end

  def correct_answer?(answer_ids)
    correct_answers_count = correct_answers.count

    (correct_answers_count == correct_answers.where(id: answer_ids).count) &&
        correct_answers_count == answer_ids.count
  end

  def correct_answers
    current_question.answers.correct
  end

  def next_question
    test.questions.order(:id).where('id > ?', current_question.id).first
  end
end
