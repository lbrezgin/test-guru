class TestPassagesController < ApplicationController

  before_action :set_test_passage, only: %i[show result update gist remaining_time]

  def show
  end

  def result
  end

  def update
    @test_passage.accept!(params[:answer_ids])
    if @test_passage.completed?
      TestPassage.update(successful: true) if @test_passage.success?
      TestsMailer.completed_test(@test_passage).deliver_now
      badge_service = BadgeService.new(@test_passage)
      badge_service.give_badge
      redirect_to result_test_passage_path(@test_passage)
    elsif (Time.now - @test_passage.created_at) / 60 >= @test_passage.test.time
      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end
  def remaining_time
    time_limit = @test_passage.test.time
    start_time = @test_passage.created_at
    elapsed_time = Time.current - start_time
    remaining_time_seconds = (time_limit * 60) - elapsed_time

    remaining_time_seconds = remaining_time_seconds.positive? ? remaining_time_seconds : 0

    render json: { remaining_time: remaining_time_seconds.floor }
  end

  def set_test_passage
    @test_passage = TestPassage.find(params[:id])
  end
end
