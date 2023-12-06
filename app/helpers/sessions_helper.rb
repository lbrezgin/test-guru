module SessionsHelper
  def flash_helper(key)
    if flash[key] && key == :alert
      content_tag :p, flash[key], class: 'flash alert'
    end
  end
end
