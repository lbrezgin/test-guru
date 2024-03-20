module TestsHelper
  def test_level(test)
    case test.level
    when 0
      t('tests_helper.test_level.easy')
    when 1
      t('tests_helper.test_level.elementary')
    when 2
      t('tests_helper.test_level.advanced')
    when 3
      t('tests_helper.test_level.hard')
    else
      t('tests_helper.test_level.hero')
    end
  end
end

