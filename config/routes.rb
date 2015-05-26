Rails.application.routes.draw do

  get  '/' => 'horoscopes#index', :as => 'root'
  get  '/horrorscopes/' => 'horoscopes#index'
  get  '/horrorscopes/Aries' => 'horoscopes#Aries'
  get  '/horrorscopes/Taurus' => 'horoscopes#Taurus'
  get  '/horrorscopes/Gemini' => 'horoscopes#Gemini'
  get  '/horrorscopes/Cancer' => 'horoscopes#Cancer'
  get  '/horrorscopes/Leo' => 'horoscopes#Leo'
  get  '/horrorscopes/Virgo' => 'horoscopes#Virgo'
  get  '/horrorscopes/Libra' => 'horoscopes#Libra'
  get  '/horrorscopes/Scorpio' => 'horoscopes#Scorpio'
  get  '/horrorscopes/Sagittarius' => 'horoscopes#Sagittarius'
  get  '/horrorscopes/Capricorn' => 'horoscopes#Capricorn'
  get  '/horrorscopes/Aquarius' => 'horoscopes#Aquarius'
  get  '/horrorscopes/Pisces' => 'horoscopes#Pise'

end
