require "test_helper"

class MovieTest < ActiveSupport::TestCase
  def setup
    @movie = Movie.new(title: "Some Title")
  end

  test "title should not be blank" do
    @movie.title = ""
    assert_not @movie.valid?
  end
end