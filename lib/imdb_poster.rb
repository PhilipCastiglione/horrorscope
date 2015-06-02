require 'nokogiri'
require 'open-uri'

module ImdbPoster

  def getImdbPoster(imdb_url)
    page = Nokogiri::HTML(open(imdb_url))
    poster = page.css('#img_primary div a img')[0].attributes['src'].text
    return poster
  end

end