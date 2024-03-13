class BadgeService

  def initialize(test_passage)
    @test_passage = test_passage
    @user = test_passage.user
    @test = test_passage.test
  end

  RULES = Badge.rules.values

  def give_badge
    Badge.all.each do |badge|
      if attempt && badge.rule == RULES[0] && @test.title == badge.rule_value
        @user.badges << (badge)
      end
      if all_test_category(@test.category_id) && badge.rule == RULES[1] && @test.category.title == badge.rule_value
        @user.badges << (badge)
      end
      if all_levels(@test.level) && badge.rule == RULES[2] && @test.level == badge.rule_value.to_i
        @user.badges << (badge)
      end
    end
  end

  private

  def attempt
    @user.test_passages.where(test_id: @test.id).count == 1 && (@test_passage.success?)
  end

  def all_test_category(category_id)
    category_count = Test.all.where(category_id: category_id).count
    success_category = []
    @user.test_passages.each do |pass|
      if pass.success? && pass.test.category_id == category_id
        success_category << pass.test
      end
    end
    category_count == success_category.uniq.count
  end

  def all_levels(level)
    levels_count = Test.all.where(level: level).count
    success_tests = []
    @user.test_passages.each do |pass|
      if pass.success? && pass.test.level == level
        success_tests << pass.test
      end
    end
    levels_count == success_tests.uniq.count
  end
end

