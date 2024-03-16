class BadgeService

  def initialize(test_passage)
    @test_passage = test_passage
    @user = test_passage.user
    @test = test_passage.test
  end

  def give_badge
    Badge.all.each do |badge|
      if earned?(badge)
        @user.badges << (badge) if !@user.badges.include?(badge)
      end
    end
  end

  private

  def earned?(badge)
    send(badge.rule, badge.rule_value)
  end

  def attempt(test_title)
    @user.test_passages.where(test_id: @test.id).count == 1 && (@test_passage.success?) && @test.title == test_title
  end

  def all_test_category(category_title)
    category_tests_ids = Test.test_names_by_category(category_title).ids
    check(category_tests_ids)
  end

  def all_levels(level)
    level_tests_ids = Test.by_level(level.to_i).ids
    check(level_tests_ids)
  end

  def check(all_tests_by_rule)
    user_tests_ids = @user.test_passages.where(successful: true, test_id: all_tests_by_rule).pluck(:test_id).uniq
    all_tests_by_rule.count == user_tests_ids.count
  end
end

