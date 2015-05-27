class EmailsController < ApplicationController

  def add
    e = Email.new()
    e.address = params['email']
    e.sign = params['zodiac']
    e.save
  end

end
