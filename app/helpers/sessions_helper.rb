module SessionsHelper
  def flash_helper
    flash.map do |key, value|
      content_tag :p, flash.now[key], class: "flash #{key}"
    end.join.html_safe
  end
end
