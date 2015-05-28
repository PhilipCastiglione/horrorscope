class HoroscopeMailer < ApplicationMailer

  def welcome_email(recipient)
    @recipient = recipient
    @url = 'https://horrify.herokuapp.com/'
    # attachments.inline["#{@recipient.sign}.svg"] = File.read("zodiac_signs/simple/#{@recipient.sign}.svg")
    
    mail(to: @recipient.address, subject: 'Welcome to Horrorscope')
  end

end
