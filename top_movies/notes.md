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
