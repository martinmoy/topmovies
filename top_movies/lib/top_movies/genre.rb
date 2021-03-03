class TopMovies::Genre
  attr_accessor :name, :movies 
  @@genres =["A","B","C","D"]
  
  def initialize(name)
    @name = name
    save
  end 
  
  def save
    @@genres << self
  end
  
  def self.all 
    @@genres
  end
  
  def get_movies
  end
  
end