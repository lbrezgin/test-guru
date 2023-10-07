class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'

  validates :level, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :title, presence: true, uniqueness: { scope: :level }

  scope :by_level, -> (level) { where(level: level) }

  scope :easy, -> { by_level(0..1) }
  scope :middle, -> { by_level(2..4) }
  scope :difficult, -> { by_level(5..Float::INFINITY) }

  scope :test_names_by_category, -> (category_name) { joins(:category).where(categories: { title: category_name }) }
  def self.sorted_test_names_by_category(category_name)
    test_names_by_category(category_name).order(title: :desc).pluck(:title)
  end
end

