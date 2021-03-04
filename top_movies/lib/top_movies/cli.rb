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
      puts " "
    end
  end
  
  def select_genre
      chosen_genre = gets.strip.to_i
      if valid_input(chosen_genre, @genres)
        list_movie(chosen_genre)
        puts "Here is the list of the Top 100 Movie for #{@genres[chosen_genre - 1].name}"
        puts "Please input the number for the movie you learn more about."
      else
        puts "Please input a number from 1 to #{@genres.size}"
        select_genre
      end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end 
  
  def list_movie(chosen_genre)
    puts "#{chosen_genre}"
    puts "cats"
  
  end
  
  def select_movie
    chosen_movie = gets.strip.to_i
    if chosen_movie.to_i > 0 && chosen_movie.to_i <=@movies.length
      get_info
      list_info
    else
       puts "Please input a number from 1 to #{@movies.size}"
       select_movie
    end
  end
  
  def get_info
    @info = ["After the death of his father, T'Challa returns home to the African nation of Wakanda to take his rightful place as king. When a powerful enemy suddenly reappears, T'Challa's mettle as king -- and as Black Panther -- gets tested when he's drawn into a conflict that puts the fate of Wakanda and the entire world at risk. Faced with treachery and danger, the young king must rally his allies and release the full power of Black Panther to defeat his foes and secure the safety of his people.",
    "Zac Efron", "url"]
  end
  
  
  def list_info
    puts "Summary #{@info[0]}"
    puts "Cast #{@info[1]}"
    puts "#{@info[3]}"
  end
  

  

end