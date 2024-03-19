class Test < ApplicationRecord
  NO_QUESTIONS = :no_questions
  NO_ANSWERS = :no_answers

  belongs_to :category
  has_many :questions, dependent: :destroy
  has_many :test_passages, dependent: :destroy
  has_many :users, through: :test_passages, dependent: :destroy
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'

  validates :level, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :title, presence: true, uniqueness: { scope: :level }
  validate :time_greater_than_zero_or_nil

  scope :by_level, -> (level) { where(level: level) }

  scope :easy, -> { by_level(0..1) }
  scope :middle, -> { by_level(2..4) }
  scope :difficult, -> { by_level(5..Float::INFINITY) }

  scope :test_names_by_category, -> (category_name) { joins(:category).where(categories: { title: category_name }) }
  def self.sorted_test_names_by_category(category_name)
    test_names_by_category(category_name).order(title: :desc).pluck(:title)
  end

  def update_readiness_to_true
    if self.questions.count < 1
      return NO_QUESTIONS
    elsif self.no_answers == true
      return NO_ANSWERS
    else
      return true
    end
  end

  def update_title
    if self.readiness == true
      return I18n.t('admin.tests.index.remove')
    else
      return I18n.t('admin.tests.index.publish')
    end
  end

  private

  def no_answers
    self.questions.each do |quest|
      if quest.answers.count < 1
        return true
      end
    end
  end

  def time_greater_than_zero_or_nil
    return if time.nil? || time > 0

    errors.add(:time, I18n.t("activerecord.models.timer_error"))
  end
end


