module BadgesHelper
  def img(rule)
    images = {
      'attempt' => '1_badge.png',
      'all_test_category' => '2_badge.png',
      'all_levels' => '3_badge.png'
    }
    images[rule]
  end
end
