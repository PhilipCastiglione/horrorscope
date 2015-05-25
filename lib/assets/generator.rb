require_relative 'HorrorThemes'
require_relative 'CopyLib'

class HorrorScope
  include HorrorThemes
  include CopyLib

  attr_accessor :theme, :general, :love, :money

  def initialize()
    # @theme = getThemes.sample.to_sym
    @theme = :Undead
    @general1 = ""
    @general2 = ""
    @general3 = ""
    @love = ""
    @money = ""

    self.generate
  end

  def generate
    @general1 += getCopy[:general][:intro].sample
    @general1 += getCopy[:general][:chance].sample
    @general2 += getCopy[:general][:sign].sample
    @general3 += getCopy[:general][:horror][@theme].last.sample

    @love += getCopy[:love][:intro].sample
    @love += getCopy[:love][:comment].sample
    @love += getCopy[:love][:horror].sample

    @money += getCopy[:money][:intro].sample
    @money += getCopy[:money][:comment].sample
    @money += getCopy[:money][:horror].sample
  end

end

class Aries < HorrorScope
  @dates = {
    lower: [21,3],
    upper: [20,4]
  }
end

class Taurus < HorrorScope
  @dates = {
    lower: [21,4],
    upper: [21,5]
  }
end

class Gemini < HorrorScope
  @dates = {
    lower: [22,5],
    upper: [22,6]
  }
end

class Cancer < HorrorScope
  @dates = {
    lower: [23,6],
    upper: [22,7]
  }
end

class Leo < HorrorScope
  @dates = {
    lower: [23,7],
    upper: [21,8]
  }
end

class Virgo < HorrorScope
  @dates = {
    lower: [22,8],
    upper: [23,9]
  }
end

class Libra < HorrorScope
  @dates = {
    lower: [24,9],
    upper: [23,10]
  }
end

class Scorpio < HorrorScope
  @dates = {
    lower: [24,10],
    upper: [22,11]
  }
end

class Sagittarius < HorrorScope
  @dates = {
    lower: [23,11],
    upper: [22,12]
  }
end

class Capricorn < HorrorScope
  @dates = {
    lower: [23,12],
    upper: [20,1]
  }
end

class Aquarius < HorrorScope
  @dates = {
    lower: [21,1],
    upper: [19,2]
  }
end

class Pisces < HorrorScope
  @dates = {
    lower: [20,2],
    upper: [20,3]
  }
end

