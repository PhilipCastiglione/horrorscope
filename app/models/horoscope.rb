class Horoscope < ActiveRecord::Base
  attr_reader :zodiac, :theme, :nouns, :mood, :characteristic, :general1, :general2, :general3, :love, :money

  include CopyLib

  def initialize(zodiac)
    @zodiac = zodiac
    # @theme = getCopy[:general][:horror].keys.sample
    @theme = :Undead #hardcode for limited copy
    @nouns = getNouns[@theme].first.to_json
    @mood = (rand(2) == 0)? :good : :bad
    @characteristic = ""
    @general1 = ""
    @general2 = ""
    @general3 = ""
    @love = ""
    @money = ""

    self.generate
  end

  def generate
    @general1 += getCopy[:general][:intro].sample
    @general1 += getCopy[:general][:astral][@mood].sample
    sign = getCopy[:general][:sign][@mood].sample
    @characteristic += sign.last
    @general2 += sign.first
    @general3 += getCopy[:general][:horror][@theme].sample
    @general3 += getCopy[:general][:nonseq].sample

    @love += getCopy[:love][:intro][@mood].sample
    @love += getCopy[:love][:comment][@mood].sample
    @love += getCopy[:love][:horror][@mood].sample

    @money += getCopy[:money][:intro].sample
    @money += getCopy[:money][:comment].sample
    @money += getCopy[:money][:horror].sample
  end

end

# class Aries < Horrorscope
#   @dates = {
#     lower: [21,3],
#     upper: [20,4]
#   }
# end

# class Taurus < Horrorscope
#   @dates = {
#     lower: [21,4],
#     upper: [21,5]
#   }
# end

# class Gemini < Horrorscope
#   @dates = {
#     lower: [22,5],
#     upper: [22,6]
#   }
# end

# class Cancer < Horrorscope
#   @dates = {
#     lower: [23,6],
#     upper: [22,7]
#   }
# end

# class Leo < Horrorscope
#   @dates = {
#     lower: [23,7],
#     upper: [21,8]
#   }
# end

# class Virgo < Horrorscope
#   @dates = {
#     lower: [22,8],
#     upper: [23,9]
#   }
# end

# class Libra < Horrorscope
#   @dates = {
#     lower: [24,9],
#     upper: [23,10]
#   }
# end

# class Scorpio < Horrorscope
#   @dates = {
#     lower: [24,10],
#     upper: [22,11]
#   }
# end

# class Sagittarius < Horrorscope
#   @dates = {
#     lower: [23,11],
#     upper: [22,12]
#   }
# end

# class Capricorn < Horrorscope
#   @dates = {
#     lower: [23,12],
#     upper: [20,1]
#   }
# end

# class Aquarius < Horrorscope
#   @dates = {
#     lower: [21,1],
#     upper: [19,2]
#   }
# end

# class Pisces < Horrorscope
#   @dates = {
#     lower: [20,2],
#     upper: [20,3]
#   }
# end

