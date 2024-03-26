class Badge < ApplicationRecord
  has_many :user_badges, dependent: :destroy
  has_many :badges, through: :user_badges, dependent: :destroy

  validates :title, presence: true
  validates :rule, presence: true
  validates :rule_value, presence: true


  def self.rules
    {
      I18n.t("badge.rules.attempt") => "attempt",
      I18n.t("badge.rules.all_test_category") => "all_test_category",
      I18n.t("badge.rules.all_levels") => "all_levels"
    }
  end
end
