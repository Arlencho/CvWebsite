class MyMailer < ApplicationMailer
  def send_message(name, email, message)
    @name = name
    @email = email
    @message = message

    mail(from: email, subject: 'Contact Us', to: ENV["DESTINATION_EMAIL"])
  end
end
