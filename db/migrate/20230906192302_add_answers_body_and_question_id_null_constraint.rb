class AddAnswersBodyAndQuestionIdNullConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:answers, :body, :question_id, false)
  end
end
