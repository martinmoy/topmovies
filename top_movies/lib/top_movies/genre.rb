class TopMovies::Genres
  attr_accessor :genre, :url
  
  @@genres =[]
  
  def initialize (genre=nil, url=nil )
    @genre = genre
    @url = url
    save
  end 
  
  
  def self.all 
    TopMovies::Scraper.scrape_genre if @@genres.empty?
    @@genres
   
  end
  
  def save
    @@genres << self
  end
  
  
  
  
end