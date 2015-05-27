class EmailsController < ApplicationController

  def add
    e = Email.new()
    e.address = params['email']
    e.save
  end

end
