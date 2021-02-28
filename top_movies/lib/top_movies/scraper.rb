
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
      doc = Nokogiri::HTML(open(TopMovies::Genres.url))
      doc.css(".table").each do |movies|
        rank = movies.css(".table .bold").text.strip
        rating = movies.css(".table .tMeterScore").text.strip
        title = movies.css(".table a").text.strip
        url = "https://www.rottentomatoes.com" + movies.css(".table a").attribute("href").text.strip
        TopMovies::Movies.new(title, url, rank, rating)
      end
  
 end
  
  
  
  
  
  
end


