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
    category_count = Test.sorted_test_names_by_category(category_title).count
    success_category = []
    TestPassage.success_test_passages.map do |pass|
      if (pass.test.category.title == category_title) && (pass.user == @user)
        success_category << pass.test
      end
    end
    category_count == success_category.uniq.count && @test.category.title == category_title
  end

  def all_levels(level)
    levels_count = Test.all.where(level: level.to_i).count
    success_tests = []
    TestPassage.success_test_passages.map do |pass|
      if (pass.test.level == level.to_i) && (pass.user == @user)
        success_tests << pass.test
      end
    end
    levels_count == success_tests.uniq.count
  end

  def success_test_passages
    @user.test_passages.map do |pass|
      pass.success?
    end
  end
end


