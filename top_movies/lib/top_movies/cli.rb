class TopMovies::CLI 

  def call
    display_introduction
    scrape_genres
    display_genres
    display_instruction
    display_ranking 
  end
  
  def display_introduction
    puts "Welcome to the Top 100 Movies"
    puts "Please select the genre you want to view?"
  end
  
  def display_instruction
    puts "Please input the number for the genre you want to view."
  end
  
  
  
  def display_ranking
    puts "Rank: 1 Title: Godfather"
    puts "Rank: 2 Title: Chicken"
  end
  
  
  def get_page
  Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
  end 
  
  def scrape_genres
    self.get_page.css("ul.dropdown-menu li")
  end
  
  def display_genres
    self.scrape_genres.each_with_index do |genres, index|
      puts "#{index+1}." "#{genres.css("a").text.strip}"
    end
  end
  
  
  
end