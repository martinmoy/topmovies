require_relative  "../top_movies"
require 'nokogiri'
require 'open-uri'

class TopMovies::Scraper
  
  def self.get_page
    Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
  end
  
  def self.scrape_genre
    genre = self.get_page.css("ul.dropdown-menu li").each do |genres|
    name = genres.css("a").text.strip
    url = "https://www.rottentomatoes.com" + genres.css("a").attribute("href").value
    
    end
  end
  
  
  
  
  
  
end

TopMovies::Scraper.scrape_genre_url