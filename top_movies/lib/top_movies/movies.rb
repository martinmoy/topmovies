class TopMovies::Movies
  attr_accessor :title, :url, :rank, :rating, :no_of_reviews
  
  @@movies = []
  
  def initialize (title=nil, url=nil, rank=nil, rating=nil, no_of_reviews=nil )
    @title = title
    @url = url
    @rank = rank
    @rating = rating
    @no_of_reviews = no_of_reviews
    @@movies << self
  end 
  
  
  
  
end