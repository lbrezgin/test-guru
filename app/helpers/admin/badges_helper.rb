module Admin::BadgesHelper
  def title(model)
    title = []
    model.all.each { |m| title << m.title }
    title
  end

  def levels
    levels = []
    Test.all.each { |test| levels << test.level if !levels.include?(test.level) }
    levels
  end
end

