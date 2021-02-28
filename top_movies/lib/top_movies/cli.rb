class TopMovies::CLI 

  def call
    display_introduction
    scrape_genres
    display_genres
    display_instruction
    display_movies
  
  end
  
  def display_introduction
    puts "Welcome to the Top 100 Movies"
    puts "Please select the genre you want to view?"
  end
  
  def display_instruction
    puts "Please input the number for the genre you want to view."
    @input = gets.strip.to_i
      if @input.to_i > 0 && @input.to_i <= @genres.length
        puts "#{@genres[@input - 1]}"
    else
      puts "Please input the number again"
    end
  end
  
  
  
  
  
  
  
  
  def scrape_genres
    @genres = TopMovies::Genres.all
  end
  
  def display_genres
   @genres.each.with_index(1) do |genres, index|
    puts "#{index}." "#{genres.name}"
    end
  end
  
  def display_movies
    
  end
  
  
  
  
end