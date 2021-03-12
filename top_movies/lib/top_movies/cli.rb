class TopMovies::Cli 
  
  def call
    introduction
    get_genre
    list_genre
    select_genre
    select_movie
  
  end
  
  def introduction 
    puts "Welcome to the Top 100 Movies"
    puts "Please select the genre you want to view?"
    puts " "
    puts "Please input the number for the genre you want to view."
    puts " "
  end
  
  def get_genre
    @genres = TopMovies::Genre.all
  end
  
  def list_genre
    @genres.each.with_index(1) do |genres, index|
      puts "#{index}." "#{genres.name}"
      @genres_url = "https://www.rottentomatoes.com#{genres.url}"
    end
  end
  
  def select_genre
      chosen_genre = gets.strip.to_i
      if valid_input(chosen_genre, @genres)
        list_movie(chosen_genre)
      else
        puts "Please input a number from 1 to #{@genres.size}"
        select_genre
      end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end 
  
  def list_movie(chosen_genre)
    genre = @genres[chosen_genre - 1]
    genre.get_movies
    puts "Here is the list of the Top 100 Movie for #{genre.name}"
    puts "Please input the rank number to view more information."
    genre.movies.each do  |movie|
      if movie.title != ""
        puts "Rank: #{movie.rank}"
        puts "Title: #{movie.title}"
        puts "Rating: #{movie.rating}"
        puts "Url: https://www.rottentomatoes.com#{movie.url}"
        puts " "
        puts " "
    
      end
    end
    
   
  
  end
  
  def select_movie
    chosen_movie = gets.strip.to_i
      get_info
      list_info
    
      
   
  end
  
  def get_info
    @info = ["After the death of his father, T'Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T'Challa's mettle as king -- and as Black Panther -- gets tested when he's drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.",
    "Amber is silly", "Amber is crazy" ]
  end
  
  
  def list_info
    puts "Summary #{@info[0]}"
    puts "Cast #{@info[1]}"
    puts "Cat :#{@info[2]}"
  end
  

  

end
