require_relative "./top_movies/version"
require_relative "./top_movies/cli.rb"
require_relative "./top_movies/movies.rb"
require_relative "./top_movies/scraper.rb"
require_relative "./top_movies/genre.rb"
require "pry"
require "nokogiri"
require 'open-uri'




module TopMovies
  class Error < StandardError; end
  # Your code goes here...
end
