class TopMovies::Cli 
  
  def call
    introduction
    get_genre
    list_genre
    select_genre
  end
  
  def introduction 
    puts "Welcome to the Top 100 Movies"
    puts "Please select the genre you want to view?"
    puts "Please input the number for the genre you want to view."
    puts " "
    puts " "
  end
  
  def get_genre
    @genre = ["A", "B", "C", 'D']
  end
  
  def list_genre
    @genres.each.with_index(1) do |genres, index|
    puts "#{index}." "#{genres.name}"
  end
  
  def select_genre
  end

end