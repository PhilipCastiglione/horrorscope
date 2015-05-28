include Generator

class HoroscopesController < ApplicationController

  def index
    puts 'got this far'
    generateHoroscopes if Horoscope.all.empty?
    @horoscope = Horoscope.find_by zodiac:'Aries'
    @movie = Movie.where(:theme => @horoscope.theme).sample
  end

  def Aries
    @horoscope = Horoscope.find_by zodiac:'Aries'
    @movie = Movie.where(:theme => @horoscope.theme).sample
    render :index
  end

  def Taurus
    @horoscope = Horoscope.find_by zodiac:'Taurus'
    @movie = Movie.where(:theme => @horoscope.theme).sample
    render :index
  end

  def Gemini
    @horoscope = Horoscope.find_by zodiac:'Gemini'
    @movie = Movie.where(:theme => @horoscope.theme).sample
    render :index
  end

  def Cancer
    @horoscope = Horoscope.find_by zodiac:'Cancer'
    @movie = Movie.where(:theme => @horoscope.theme).sample
    render :index
  end

  def Leo
    @horoscope = Horoscope.find_by zodiac:'Leo'
    @movie = Movie.where(:theme => @horoscope.theme).sample
    render :index
  end

  def Virgo
    @horoscope = Horoscope.find_by zodiac:'Virgo'
    @movie = Movie.where(:theme => @horoscope.theme).sample
    render :index
  end

  def Libra
    @horoscope = Horoscope.find_by zodiac:'Libra'
    @movie = Movie.where(:theme => @horoscope.theme).sample
    render :index
  end

  def Scorpio
    @horoscope = Horoscope.find_by zodiac:'Scorpio'
    @movie = Movie.where(:theme => @horoscope.theme).sample
    render :index
  end

  def Sagittarius
    @horoscope = Horoscope.find_by zodiac:'Sagittarius'
    @movie = Movie.where(:theme => @horoscope.theme).sample
    render :index
  end

  def Capricorn
    @horoscope = Horoscope.find_by zodiac:'Capricorn'
    @movie = Movie.where(:theme => @horoscope.theme).sample
    render :index
  end

  def Aquarius
    @horoscope = Horoscope.find_by zodiac:'Aquarius'
    @movie = Movie.where(:theme => @horoscope.theme).sample
    render :index
  end

  def Pisces
    @horoscope = Horoscope.find_by zodiac:'Pisces'
    @movie = Movie.where(:theme => @horoscope.theme).sample
    render :index
  end

  def api
    render :json => Horoscope.all.to_json
  end

end