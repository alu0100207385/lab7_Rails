require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

#     it "should have the title 'Home'" do
    it "should have the base title" do
      visit '/static_pages/home'
#       expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    
    it "should not have a custom page title" do
       visit '/static_pages/home'
       expect(page).not_to have_title('| home')
    end
    
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

#     it "should have the title 'Help'" do
    it "should have the base title" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
#       expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
    
    it "should not have a custom page title" do
       visit '/static_pages/help'
       expect(page).not_to have_title('| help')
    end
    
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

#     it "should have the title 'About Us'" do
    it "should have the base title" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
#       expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
    
    it "should not have a custom page title" do
       visit '/static_pages/about'
       expect(page).not_to have_title('| about')
    end
    
  end
  
end