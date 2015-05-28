class EmailsController < ApplicationController

  def add
    recipient = Email.new()
    recipient.address = params['email']
    recipient.sign = params['zodiac']
    if recipient.save
      HoroscopeMailer.welcome_email(recipient).deliver_now
    else
      # throw an error
      puts '%%%%%shit broke in EmailsController#add when attempting to save recipient'
    end
    render nothing: true
  end

end
