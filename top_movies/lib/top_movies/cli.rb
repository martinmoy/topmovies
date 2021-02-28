class TopMovies::CLI 

  def call
    display_introduction
    scrape_genres
    display_genres
    display_instruction
  
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
      @genres = ["Action", "Adventure", "Mystery", "Cats"]
  end
  
  def display_genres
   # scrape_genres.each.with_index(1) do |genres, index|
  #    puts "#{index}." "#{genres.css("a").text.strip}"
  #    puts "#{@basepath}#{genres.css("a").attribute("href").value}"
   # end
   @genres.each.with_index(1) do |genres, index|
    puts "#{index}." "#{genres}"
    end
  end
  
  
  
end