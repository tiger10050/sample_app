require 'spec_helper'
require 'rails_helper'

describe "Static pages" do
  let(:default_title) {"Ruby on Rails Tutorial Sample App | "}
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title(default_title + "Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title(default_title + "Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title(default_title + "About Us")
    end
  end

  describe "Contacts page" do

    it "should have content 'Contacts'" do
      visit 'static_pages/contacts'
      expect(page).to have_content('contacts')
    end

    it "should have title 'Contacts'" do
      visit '/static_pages/contacts'
      expect(page).to have_title(default_title + "Contacts")
    end
  end
end
