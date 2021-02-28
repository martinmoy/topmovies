class TopMovies::Movies
  attr_accessor :title, :url, :rank, :rating
  @@movies = []
  
  def initialize (title=nil, url=nil, rank=nil, rating=nil )
    @title = title
    @url = url
    @rank = rank
    @rating = rating
    save
  end 
  
  
  def self.all 
    TopMovies::Scraper.scrape_movies if @@movies.empty?
    @@movies
  end
  
  def save 
    @@movies << self
  end
  
  
  
  
  
  
end