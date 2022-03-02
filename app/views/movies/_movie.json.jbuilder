json.extract! movie, :id, :title, :release_date, :genre, :director, :actors, :plot, :image_url, :created_at, :updated_at
json.url movie_url(movie, format: :json)
