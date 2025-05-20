class MoviesController < ApplicationController
  def new
    @movie = Movie.new
    require "open-uri"
    url = 'https://thecinemaholic.com/japanese-movies/'
    html = URI.open(url).read

    doc = Nokogiri::HTML

    movie_titles = doc.css('h3').map(&:text).reject(&:empty?)
    raise
  end

  def recommend
    require "open-uri"
    url = 'https://thecinemaholic.com/japanese-movies/'
    html = URI.open(url)
    doc = Nokogiri::HTML(html)
  end
end
