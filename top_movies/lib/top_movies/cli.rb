class TopMovies::Cli 
  
  def call
    introduction
    get_genre
    list_genre
    select_genre
    get_movie
    list_movie
    select_movie
    get_detail
    list_detail
  end
  
  def introduction 
    puts "Welcome to the Top 100 Movies"
    puts "Please select the genre you want to view?"
    puts " "
    puts "Please input the number for the genre you want to view."
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
        puts "Please input the number for the movie you learn more about."
      else
        puts "Please input a number from 1 to #{@genres.size}"
        select_genre
      end
  end
  
  def get_movie
    @movies = ["13", "14", "15", "16"]
  end
  
  def list_movie
    @movies.each.with_index(1) do |movies, index|
      puts "#{index}." "#{movies}"
    end
  end
  
  def select_movie
    chosen_movie = gets.strip.to_i
    if chosen_movie.to_i > 0 && chosen_movie.to_i <=@movies.length
      puts " bababalala"
    else
       puts "Please input a number from 1 to #{@movies.size}"
       select_movie
    end
  end
  
  def get_info
    @info = ["Summary", "Cast", "url"]
  end
  
  
  def list_detail
    puts "Summary"
  end
  
  
  

  
  

end