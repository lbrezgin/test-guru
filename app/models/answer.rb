class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true

  scope :correct, -> { where(correct: true) }

  validate :validate_question_answers_count, on: :create

  private

  def validate_question_answers_count
    if question.answers.count >= 4
      errors.add(:question, "у этого вопроса уже есть 4 ответа")
    end
  end
end
