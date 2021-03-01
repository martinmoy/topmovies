class TopMovies::Genres
  attr_accessor :name, :url
  
  @@genres =[]
  
  def initialize (name=nil, url=nil )
    @name = name
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