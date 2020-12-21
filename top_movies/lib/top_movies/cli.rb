class TopMovies::CLI 

  def call
    display_introduction
    display_instruction
    display_ranking 
  end
  
  def display_introduction
    puts "Welcome to the TOP 100 Movies"
    puts "Which select the genre you want to view?"
  end
  
  def display_instruction
    puts "Please input the number for the genre you want to view."
  end
  
  
  
  def display_ranking
    puts "Rank: 1 Title: Godfather"
    puts "Rank: 2 Title: Chicken"
  end
  
end