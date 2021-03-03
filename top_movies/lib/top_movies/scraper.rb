class TopMovies::Scraper
      
    
    
    
    def self.scrape_genre
        doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
        doc.css("ul.dropdown-menu li").each do |genres|
        name = genres.css("a").text.strip
        url =  genres.css("a").attribute('href').value
        TopMovies::Genre.new(name, url)
      end
    end
  
  
  
  
  
  
  
end