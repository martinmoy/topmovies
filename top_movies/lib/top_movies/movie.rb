class TopMovies::Movie 
  attr_accessor :title, :url, :rank, :rating , :info, :genre
  
  @@movies = []
  
  def initialize (title, url, rank, rating, genre)
    @title = title
    @url = url
    @rank = rank
    @rating = rating
    @genre = genre
    @info =[]
    add_to_genre
    save
  end 
  
  def self.all 
    @@movies
  end
  
  
  def get_movie_details
  end
  
  def add_to_genre
    @genre.movies << self unless @genre.movies.include?(self)
  end
  
  def save 
    @@movies << self
  end
  
  
end