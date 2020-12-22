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
    @input = gets.strip
    if @input.to_i <= display_genres.length && @input.to_i > 0
      puts "#{display_genres[@input.to_i]}"
    else
      puts "No"
    end
  end
  
  
  
  
  
  
  
  
  def scrape_genres
    @basepath ="https://www.rottentomatoes.com"
    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
    doc.css("ul.dropdown-menu li")
  end
  
  def display_genres
    scrape_genres.each.with_index(1) do |genres, index|
      puts "#{index}." "#{genres.css("a").text.strip}"
      puts "#{@basepath}#{genres.css("a").attribute("href").value}"
    end
  end
  
  
  
end