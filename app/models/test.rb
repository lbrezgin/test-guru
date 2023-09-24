class Test < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :questions
  has_many :tests_users
  has_many :users, throught: :tests_users
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

  def self.sorted_test_names_by_category(category_name)
    joins(:category)
      .where(categories: { title: category_name })
      .order(title: :desc)
      .pluck(:title)
  end
end
