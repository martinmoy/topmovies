class TopMovies::Genres
  attr_accessor :name, :url 
  
  @@genres = []
  
  def initialize (name=nil, url=nil)
    @name = name
    @url = url
    @@genres << self
  end 
  
  
  
  
end