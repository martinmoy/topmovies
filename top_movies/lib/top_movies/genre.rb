class TopMovies::Genre
  attr_accessor :name, :url
  
  @@genres =[]
  
  def initialize (name=nil, url=nil )
    @name = name
    @url = url
    @movies=[]
    save
  end 
  
  
  def self.all 
    TopMovies::Scraper.scrape_genre if @@genres.empty?
    @@genres
  end
  
  def self.get_movies
    TopMovies::Movie.scrape_movies(self) if @movie.empty?
  
  def save
    @@genres << self
  end
  
  

end