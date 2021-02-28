require_relative  "../top_movies"
require 'nokogiri'
require 'open-uri'
require 'pry'

class TopMovies::Scraper
  
  def self.get_page
    Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
  end
  
  def self.scrape_genre
      self.get_page.css("ul.dropdown-menu li").each do |genres|
      genre = genres.css("a").text.strip
      url = "https://www.rottentomatoes.com" + genres.css("a").attribute("href").value
      TopMovies::Genres.new(genre, url)
    end
  end
  
  def self.scrape_movies
    
    
    
      
  end
  
  
  
  
  
  
end

TopMovies::Scraper.scrape_movies

