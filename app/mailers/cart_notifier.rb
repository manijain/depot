class CartNotifier < ActionMailer::Base
  default from: 'Sam Ruby <depot@example.com>'

  def received(error)
    @error = error
    mail to: "manijain333@rediffmail.com", subject: 'You can not view empty cart'
  end

end