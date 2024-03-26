module QuestionsHelper
  def question_header(question)
    test = question.test.title
    question.persisted? ? t("helpers.questions_helper.question_header.edit", test: test) : t("helpers.questions_helper.question_header.new", test: test)
  end
end
