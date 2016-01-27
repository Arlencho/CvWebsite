class PagesController < ApplicationController
  def contact_us
    name = params[:name]
    email = params[:email]
    message = params[:message]
    # mailer send email to admin
    MyMailer.send_message(name, email, message).deliver_now
    redirect_to :back
  end
end
