Rails.application.routes.draw do

  get  '/' => 'horrorscopes#index', :as => 'root'
  get  '/horrorscopes/' => 'horrorscopes#index'
  get  '/horrorscopes/Aries' => 'horrorscopes#Aries'
  get  '/horrorscopes/Taurus' => 'horrorscopes#Taurus'
  get  '/horrorscopes/Gemini' => 'horrorscopes#Gemini'
  get  '/horrorscopes/Cancer' => 'horrorscopes#Cancer'
  get  '/horrorscopes/Leo' => 'horrorscopes#Leo'
  get  '/horrorscopes/Virgo' => 'horrorscopes#Virgo'
  get  '/horrorscopes/Libra' => 'horrorscopes#Libra'
  get  '/horrorscopes/Scorpio' => 'horrorscopes#Scorpio'
  get  '/horrorscopes/Sagittarius' => 'horrorscopes#Sagittarius'
  get  '/horrorscopes/Capricorn' => 'horrorscopes#Capricorn'
  get  '/horrorscopes/Aquarius' => 'horrorscopes#Aquarius'
  get  '/horrorscopes/Pisces' => 'horrorscopes#Pisces'

end
