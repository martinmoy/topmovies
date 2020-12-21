1. scrape website link, top 100 movies of all time 
  "https://www.rottentomatoes.com/top/bestofrt/" 

2. css code for the genres 
  doc = Nokogiri::HTML(open(site))

  doc.css("ul.dropdown-menu li").each do |genres|
   puts genres.css("a").text.strip
  end
  
3. code for genres url
  
  doc.css("ul.dropdown-menu li").each do |genres|
    puts genres.css("a").attribute("href").value
  end

  *need to add basepath of https://www.rottentomatoes.com/
4. code for the rank 
  
  doc.css(".table .bold").each do |rank|
    puts rank.text.strip
  end

5. code for rating: Tomatometer rating
  doc.css(".table .tMeterScore").each do |rating|
   puts rating.text.strip
  end


6. code for the titles
  doc.css(".table a").each do |title|
    puts title.text.strip
  end

7. code for url of the titles
  doc.css(".table a").each do |url|
    puts url.attribute("href").text.strip
  end

*need to add basepath of https://www.rottentomatoes.com/
