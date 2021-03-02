class TopMovies::CLI 

  def call
    display_introduction
    scrape_genres
    display_genres
    display_instruction
    scrape_movies
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
        puts "Here is the list of the Top 100 Movie for #{@genres[@input - 1].name} Genre"
        puts "#{@genres[@input - 1].url}"
    else
      puts "Please input a number from 1 to #{@genres.size}"
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
  
  def scrape_movies
    @movies = TopMovies::Movie.all
  end
  
  def display_movies
    TopMovies::Movie.all.each do |movie|
      if movie.title != ""
        puts "Rank: #{movie.rank}"
        puts "Title: #{movie.title}"
        puts "Rating: #{movie.rating}"
        puts "Url: #{movie.url}"
        puts " "
        puts " "
      end
    end
    
  end
  
  
  
  
end