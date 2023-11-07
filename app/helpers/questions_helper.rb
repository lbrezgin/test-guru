module QuestionsHelper
  def question_header(question)
    test = question.test.title
    question.persisted? ? "Edit '#{test}' question" : "Create new '#{test}' question"
  end
end
