class TopMovies::Movie 
  attr_accessor :title, :url, :rank, :rating , :info
  
  @@movies = []
  
  def initialize (title=nil, url=nil, rank=nil, rating=nil )
    @title = title
    @url = url
    @rank = rank
    @rating = rating
    @info =[]
    save
  end 
  
  def self.all 
  end
  
  
  def get_movie_details
  end
  
  def save 
    @@all << self
  end
  
  
end