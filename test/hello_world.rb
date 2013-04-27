require "cuba/capybara"
require "./hello_world"

scope do
  test "Homepage" do
    visit "/"

    assert has_content?("Hello world!")
  end

  test "About" do
    visit "/about"

    assert has_content?("This is the about page for this application")
  end
end
