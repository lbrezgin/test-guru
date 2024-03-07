class FeedbacksController < ApplicationController

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    if @feedback.save
      FeedbackMailer.send_feedback(@feedback).deliver_now
      flash[:notice] = t('feedbacks.create.send')
      redirect_to root_path
    else
      flash.now[:allert] = t('feedbacks.create.nosend')
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:name, :email, :message)
  end
end

