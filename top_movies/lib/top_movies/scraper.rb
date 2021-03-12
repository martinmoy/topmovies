class TopMovies::Scraper
      
    def self.scrape_genre
        doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
        doc.css("ul.dropdown-menu li").each do |genres|
        name = genres.css("a").text.strip
        url =  genres.css("a").attribute('href').value
        TopMovies::Genre.new(name, url)
      end
    end
      
    def self.scrape_movie(genre)
      url = "https://www.rottentomatoes.com#{genre.url}"
      doc = Nokogiri::HTML(open(url))
      ranking = doc.css(".table").search('tr')
      ranking.each do |movies|
        rank = movies.css(".bold").text.strip.split(".")
        title = movies.css("a").text.strip
        rating = movies.css(".tMeterScore").text.strip
        url = movies.css("a").attribute('href')
        TopMovies::Movie.new(title, url, rank, rating,genre)
      end
    end
    
    def self.scrape_movie_info(movie)
      url ="https://www.rottentomatoes.com#{movie.url}"
      doc = Nokogiri::HTML(open(url))
    end
  

end