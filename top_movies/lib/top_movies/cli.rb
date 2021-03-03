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
    @genres = ["A", "B", "C", 'D']
  end
  
  def list_genre
    @genres.each.with_index(1) do |genres, index|
      puts "#{index}." "#{genres}"
    end
  end
  
  def select_genre
      chosen_genre = gets.strip.to_i
      if chosen_genre.to_i > 0 && chosen_genre.to_i <= @genres.length
        puts "Here is the list of the Top 100 Movie for #{@genres[chosen_genre - 1]}"
      end
  end
  
  

end