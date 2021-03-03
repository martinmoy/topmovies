class TopMovies::Scraper
    def get_page
      get_page = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
    end
    
    
    def self.scrape_genre
      get_page.css("ul.dropdown-menu li").each do |genres|
        name = genres.css("a").text.strip
        url =  genres.css("a").attribute('href').value
        TopMovies::Genre.new(name, url)
      end
    end
  
  
  
  
  
  
  
end