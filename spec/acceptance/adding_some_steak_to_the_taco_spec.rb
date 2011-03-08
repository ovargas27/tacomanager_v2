require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Adding Some Steak To The Taco", %q{
  In order to get a good taco
  As a pechan
  I want to add some steak to my taco
} do

  scenario "Adding steak" do
    visit "/"
    page.should have_content("I wanna taco. And you?")
  end
end
