module SessionsHelper
  def flash_helper(key, text)
    flash.now[key] = text
  end
end
