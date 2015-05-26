class HoroscopesController < ApplicationController

  def index
    # first time visitor stuff or default
    @horoscope = Horoscope.new
    @horoscope.generate('Aries')
  end

  def Aries
    @horoscope = Horoscope.new('Aries')
    render :index
  end

  def Taurus
    @horoscope = Horoscope.new('Taurus')
    render :index
  end

  def Gemini
    @horoscope = Horoscope.new('Gemini')
    render :index
  end

  def Cancer
    @horoscope = Horoscope.new('Cancer')
    render :index
  end

  def Leo
    @horoscope = Horoscope.new('Leo')
    render :index
  end

  def Virgo
    @horoscope = Horoscope.new('Virgo')
    render :index
  end

  def Libra
    @horoscope = Horoscope.new('Libra')
    render :index
  end

  def Scorpio
    @horoscope = Horoscope.new('Scorpio')
    render :index
  end

  def Sagittarius
    @horoscope = Horoscope.new('Sagittarius')
    render :index
  end

  def Capricorn
    @horoscope = Horoscope.new('Capricorn')
    render :index
  end

  def Aquarius
    @horoscope = Horoscope.new('Aquarius')
    render :index
  end

  def Pisces
    @horoscope = Horoscope.new('Pisces')
    render :index
  end

end