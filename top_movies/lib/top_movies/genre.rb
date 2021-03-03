class TopMovies::Genre
  attr_accessor :name, :movies, :url
  @@genres =[]
  
  def initialize(name, url)
    @name = name
    @url = url
    @movie = []
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
    TopMovies::Scraper.scrape_movie(self) if @movie.empty?
  end
  
end