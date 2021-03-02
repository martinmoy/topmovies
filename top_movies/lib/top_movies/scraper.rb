
class TopMovies::Scraper

  
  def self.scrape_genre
    get_page = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
    
    get_page.css("ul.dropdown-menu li").each do |genres|
        name = genres.css("a").text.strip
        url = "https://www.rottentomatoes.com" + genres.css("a").attribute('href').value
        TopMovies::Genres.new(name, url)
        
    end
  end
  
  def self.scrape_movies(genre)
      
      doc = Nokogiri::HTML(open(link))
      doc.css(".table").search('tr').each do |movies|
        rank = movies.css(".bold").text.strip.split(".")
        title = movies.css("a").text.strip
        rating = movies.css(".tMeterScore").text.strip
        url = movies.css("a").attribute('href')
      
        TopMovies::Movie.new(title, url, rank, rating)
      end
 end
 
 
 def self.scrape_movie_details
 end
  
  
  
  
  
  
end



