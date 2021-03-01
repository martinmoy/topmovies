
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
      
      doc.css(".table").each do |movies|
        rank = movies.css(".bold").text.strip
        rating = movies.css(".tMeterScore").text.strip
        title = movies.css("a").text.strip
        url = "https://www.rottentomatoes.com" + movies.css("a").attribute("href").value
        TopMovies::Movies.new(title: title, url: url, rank: rank, rating: rating)
      end
  
 end
  
  
  
  
  
  
end


