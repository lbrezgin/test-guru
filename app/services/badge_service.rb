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
    category_tests = Test.test_names_by_category(category_title)
    user_tests_by_category = @user.test_passages.where(successful: true).map do |pass|
      pass.test if category_tests.include?(pass.test)
    end
    category_tests.count == user_tests_by_category.uniq.count
  end

  def all_levels(level)
    level_tests = Test.all.where(level: level.to_i)
    user_tests_by_level = @user.test_passages.where(successful: true).map do |pass|
      pass.test if level_tests.include?(pass.test)
    end
    level_tests == user_tests_by_level.uniq.count
  end
end

