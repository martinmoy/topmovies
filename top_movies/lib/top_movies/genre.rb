class TopMovies::Genre
  attr_accessor :name, :movies 
  @@genres =[]
  
  def initialize(name)
    @name = name
    save
  end 
  
  def save
    @@genres << self
  end
  
  def self.all 
    TopMovies::Scraper.scrape_genre if @@genres.empty?
    @@genres
  end
  
  def get_movies
  end
  
end