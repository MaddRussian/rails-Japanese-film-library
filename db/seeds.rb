require "open-uri"

puts "Seeding classic Japanese films..."

films = [
  {
    title: "Seven Samurai",
    director: "Akira Kurosawa",
    year: 1954,
    poster: "https://m.media-amazon.com/images/I/61CTlEQZrRL._AC_.jpg"
  },
  {
    title: "Tokyo Story",
    director: "Yasujirō Ozu",
    year: 1953,
    poster: "https://filmartgallery.com/cdn/shop/files/Tokyo-Story-Vintage-Movie-Poster-Original_280e658b.jpg?v=1741764910"
  },
  {
    title: "Rashomon",
    director: "Akira Kurosawa",
    year: 1950,
    poster: "https://cdn.posteritati.com/posters/000/000/073/791/rashomon-sm-web.jpg"
  },
  {
    title: "Ugetsu",
    director: "Kenji Mizoguchi",
    year: 1953,
    poster: "https://cdn.posteritati.com/posters/000/000/036/588/street-of-shame-ugetsu-sm-web.jpg"
  },
  {
    title: "Ikiru",
    director: "Akira Kurosawa",
    year: 1952,
    poster: "https://www.originalfilmart.com/cdn/shop/products/ikiru_1952_linen_original__film_art_5000x.jpg?v=1618503303"
  },
  {
    title: "Woman in the Dunes",
    director: "Hiroshi Teshigahara",
    year: 1964,
    poster: "https://cdn.posteritati.com/posters/000/000/028/830/woman-in-the-dunes-sm-web.jpg"
  },
  {
    title: "Harakiri",
    director: "Masaki Kobayashi",
    year: 1962,
    poster: "https://cdn.posteritati.com/posters/000/000/004/272/harakiri-sm-web.jpg"
  },
  {
    title: "The Human Condition I",
    director: "Masaki Kobayashi",
    year: 1959,
    poster: "https://cdn.posteritati.com/posters/000/000/060/598/the-human-condition-i-no-greater-love-sm-web.jpg"
  },
  {
    title: "Fires on the Plain",
    director: "Kon Ichikawa",
    year: 1959,
    poster: "https://www.rarewarfilms.com/image/cache/data/Fires%20on%20the%20Plain%201-900x900.jpg"
  },
  {
    title: "Sansho the Bailiff",
    director: "Kenji Mizoguchi",
    year: 1954,
    poster: "https://cdn.posteritati.com/posters/000/000/070/869/sansho-the-bailiff-sm-web.jpg"
  }
]

films.each do |film_data|
  Film.create!(film_data)
end

List.create!(name: "Favorites")

List.create!(name: "Watched")

List.create!(name: "Watchlist")


puts "Done seeding films!"





# require 'open-uri'
# puts "Cleaning the DB...."
# Movie.destroy_all
# # List.destroy_all

# # the Le Wagon copy of the API
# puts "Creating movies.... \n"
# (1..5).to_a.each do |num|
#   url = "http://tmdb.lewagon.com/movie/top_rated?page=#{num}"
#   response = JSON.parse(URI.open(url).read)

#   response['results'].each do |movie_hash|
#     puts "...creating the movie #{movie_hash['title']}..."
#     puts
#     # create an instance with the hash
#     Movie.create!(
#       poster_url: "https://image.tmdb.org/t/p/w500" + movie_hash['poster_path'],
#       rating: movie_hash['vote_average'],
#       title: movie_hash['title'],
#       overview: movie_hash['overview']
#     )
#   end
# end
# puts "... created #{Movie.count} movies."
