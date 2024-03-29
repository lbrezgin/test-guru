class TestPassagesController < ApplicationController

  before_action :set_test_passage, only: %i[show result update gist remaining_time]

  def show
  end

  def result
  end

  def update
    @test_passage.accept!(params[:answer_ids])

    if @test_passage.completed? || @test_passage.time_over?
      flash[:alert] = t("test_passages.update.time_end") if @test_passage.time_over?
      TestPassage.update(successful: true) if @test_passage.success?
      TestsMailer.completed_test(@test_passage).deliver_now
      badge_service = BadgeService.new(@test_passage)
      badge_service.give_badge
      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end

  private
  def set_test_passage
    @test_passage = TestPassage.find(params[:id])
  end
end

