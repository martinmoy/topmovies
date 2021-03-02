
class TopMovies::Scraper

  
  def self.scrape_genre
    get_page = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
    
    get_page.css("ul.dropdown-menu li").each do |genres|
        name = genres.css("a").text.strip
        url = "https://www.rottentomatoes.com" + genres.css("a").attribute("href").value
        TopMovies::Genres.new(name, url)
        
    end
  end
  
  def self.scrape_movies
      url = "https://www.rottentomatoes.com/top/bestofrt/top_100_mystery__suspense_movies/"
      doc = Nokogiri::HTML(open(url))
      
      doc.css(".table").search('tr').each do |movies|
        rank = movies.css(".bold")
        rating = movies.css(".tMeterScore")
        title = movies.css("a")
        url = movies.css("a").attribute("href")
        TopMovies::Movie.new(title, url, rank, rating)
       
      end
  
 end
  
  
  
  
  
  
end



