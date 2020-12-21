class TopMovies::Scraper
  
  def get_page
    Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/")
  end 
  
  
  
end