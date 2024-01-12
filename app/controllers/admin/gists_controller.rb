class Admin::GistsController < ApplicationController

  before_action :set_test_passage, only: :create

  def index
    @gists = Gist.all
  end
  def create
    service = GistQuestionService.new(@test_passage.current_question)
    result = service.call

    if service.success?(result)
      url = result[:gist][:html_url]
      Gist.create(gist_url: url, user: current_user, question: @test_passage.current_question)

      flash[:notice] = t('.success', gist_url: url)
    else
      flash[:alert] = t('.failure', error_message: result[:error_message])
    end
    redirect_to @test_passage
  end

  private

  def set_test_passage
    @test_passage = TestPassage.find(params[:test_passage])
  end
end
