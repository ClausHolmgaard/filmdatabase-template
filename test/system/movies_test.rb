require "application_system_test_case"

class MoviesTest < ApplicationSystemTestCase
  test "viewing the list" do
    
    visit movies_path
    assert_selector('td')
    
  end
  
  test "adding a movie" do
    visit movies_path
    
    click_on "New Movie"
    
    fill_in "Title", with: "The Matrix"
    fill_in "Year", with: "1999"
    fill_in "Genre", with: "Action/Sci-fi"
    fill_in "Director", with: "Wachowski Bros/sisters"

    click_on "Create Movie"
 
  end
  
  test "deleting a movie" do
    
    visit movies_path
    accept_confirm do
  
      click_on "Delete"
    
    end
  
  end
end
