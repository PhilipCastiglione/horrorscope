include Generator

class HoroscopesController < ApplicationController

  def index
    generateHoroscopes if !Horoscope.all
    @horoscope = Horoscope.find_by zodiac:'Aries'
  end

  def Aries
    @horoscope = Horoscope.find_by zodiac:'Aries'
    render :index
  end

  def Taurus
    @horoscope = Horoscope.find_by zodiac:'Taurus'
    render :index
  end

  def Gemini
    @horoscope = Horoscope.find_by zodiac:'Gemini'
    render :index
  end

  def Cancer
    @horoscope = Horoscope.find_by zodiac:'Cancer'
    render :index
  end

  def Leo
    @horoscope = Horoscope.find_by zodiac:'Leo'
    render :index
  end

  def Virgo
    @horoscope = Horoscope.find_by zodiac:'Virgo'
    render :index
  end

  def Libra
    @horoscope = Horoscope.find_by zodiac:'Libra'
    render :index
  end

  def Scorpio
    @horoscope = Horoscope.find_by zodiac:'Scorpio'
    render :index
  end

  def Sagittarius
    @horoscope = Horoscope.find_by zodiac:'Sagittarius'
    render :index
  end

  def Capricorn
    @horoscope = Horoscope.find_by zodiac:'Capricorn'
    render :index
  end

  def Aquarius
    @horoscope = Horoscope.find_by zodiac:'Aquarius'
    render :index
  end

  def Pisces
    @horoscope = Horoscope.find_by zodiac:'Pisces'
    render :index
  end

end