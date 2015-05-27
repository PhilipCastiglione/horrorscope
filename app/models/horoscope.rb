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
