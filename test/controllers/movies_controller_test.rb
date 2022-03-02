require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:one)
  end

  test "should get index" do
    get movies_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_url
    assert_response :success
  end

  test "should create movie" do
    assert_difference('Movie.count') do
      post "/movies",
           params: { movie: { title: "Can Create",
                              release_date: "25 Jun 1982",
                              genre: "A Genre",
                              director: "A Director",
                              actors: "An Actor",
                              plot: "A Plot",
                              image_url: "A url"} }
    end

    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "Movie was successfully created."
  end

  test "should show movie" do
    get movie_url(@movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_url(@movie)
    assert_response :success
  end

  test "should update movie" do
    patch movie_url(@movie), params: { movie: { actors: @movie.actors, director: @movie.director, genre: @movie.genre, image_url: @movie.image_url, plot: @movie.plot, release_date: @movie.release_date, title: @movie.title } }
    assert_redirected_to movie_url(@movie)
  end

  test "should destroy movie" do
    assert_difference("Movie.count", -1) do
      delete movie_url(@movie)
    end

    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "p", "Movie was successfully removed."
  end
end
