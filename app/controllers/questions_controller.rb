class QuestionsController < ApplicationController
  before_action :find_test
  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    @questions = @test.questions
  end

  def show
    @question = @test.questions.find(params[:id])
  end

  def new
    @question = @test.questions.new
  end

  def create
    @question = @test.questions.new(question_params)
    if @question.save
      redirect_to test_question_path(@test, @question), notice: 'Вопрос успешно создан.'
    else
      render 'new'
    end
  end

  def destroy
    @question = @test.questions.find(params[:id])
    if @question.destroy
      redirect_to test_questions_path(@test), notice: 'Вопрос успешно удален.'
    else
      redirect_to test_question_path(@test, @question), alert: 'Не удалось удалить вопрос.'
    end
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def rescue_with_question_not_found
    render plain: 'Вопрос не найден.'
  end
end
