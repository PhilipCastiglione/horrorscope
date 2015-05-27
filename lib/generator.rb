module Generator

  def generateHoroscopes
    Horoscope.all.each {|h| h.destroy}
    ['Aries','Taurus','Gemini','Cancer','Leo','Virgo','Libra','Scorpio','Sagittarius','Capricorn','Aquarius','Pisces'].each do |z|
      Horoscope.new.generate(z)
    end
  end

end