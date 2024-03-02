class FeedbackMailer < ApplicationMailer
  def send_feedback(feedback)
    @feedback = feedback
    mail(from: feedback.email, to: "lewickbrez@gmail.com", subject: "Новый отзыв получен", body: feedback.message)
  end
end
