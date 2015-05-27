class Email < ActiveRecord::Base

  validates :address, uniqueness: true

end
