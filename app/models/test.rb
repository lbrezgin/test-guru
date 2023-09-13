class Test < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :category

  def self.sorted_test_names_by_category(category_name)
    joins(:category)
      .where(categories: { title: category_name })
      .order(title: :desc)
      .pluck(:title)
  end
end
