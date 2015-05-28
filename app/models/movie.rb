class Movie < ActiveRecord::Base

  validates :title, uniqueness: true

end
