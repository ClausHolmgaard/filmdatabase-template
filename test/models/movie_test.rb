require "test_helper"

class MovieTest < ActiveSupport::TestCase
  test "should pass all validates" do
    movie = Movie.new
    movie.save
    assert movie.errors.attribute_names.include?(:title),
    "Should not save movie without title"
    assert movie.errors.attribute_names.include?(:year),
    "Should not save movie without year" 
    assert movie.errors.attribute_names.include?(:genre),
    "Should not save movie without genre" 
    assert movie.errors.attribute_names.include?(:director),
    "Should not save movie without director"
  end
end
