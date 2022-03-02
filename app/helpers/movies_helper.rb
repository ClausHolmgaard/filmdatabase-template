module MoviesHelper
  BASE_URL = "http://www.omdbapi.com/"

  def get_omdb_json(imdb_id)
    HTTParty.get("#{BASE_URL}?apikey=#{ENV['OMDB_API_KEY']}&i=#{imdb_id}")
  end

  def search_for_movies(query)
    HTTParty.get("#{BASE_URL}?apikey=#{ENV['OMDB_API_KEY']}&s=#{query}")
  end
end
