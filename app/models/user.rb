class User < ApplicationRecord
  has_and_belongs_to_many :tests

  def tests_by_difficulty(difficulty)
    tests.where(level: difficulty)
  end
end
