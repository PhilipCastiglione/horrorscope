include CopyLib

class Horoscope < ActiveRecord::Base

  def generate(zodiac)

    self.zodiac = zodiac

    theme = getNouns.keys.sample.to_sym
    self.theme = theme
    
    self.nouns = getNouns[theme].to_json
    
    mood = (rand(2) == 0)? :good : :bad
    self.mood = mood

    gen_intro = getCopy[:general][:intro].sample
    gen_astral = getCopy[:general][:astral][mood].sample
    self.general1 = gen_intro + gen_astral

    sign = getCopy[:general][:sign][mood].sample
    self.characteristic = sign.last
    self.general2 = sign.first

    gen_horror = getCopy[:general][:horror][theme].sample
    gen_nonseq = getCopy[:general][:nonseq].sample
    self.general3 =  gen_horror + gen_nonseq 

    love_intro = getCopy[:love][:intro][mood].sample
    love_comment = getCopy[:love][:comment][mood].sample
    love_horror = getCopy[:love][:horror][mood].sample
    self.love = love_intro + love_comment + love_horror

    money_intro = getCopy[:money][:intro].sample
    money_comment = getCopy[:money][:comment].sample
    money_horror = getCopy[:money][:horror].sample
    self.money = money_intro + money_comment + money_horror
    self.save

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

