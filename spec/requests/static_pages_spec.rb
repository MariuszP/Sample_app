require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do

      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')

    end

    it "should have proper title" do

      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Test title | Home')

    end

  end

  describe "Help page" do

    it "should have the content 'Help'" do

      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')

    end


    it "should have proper title" do
      
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Test title | Home')

    end

  end

end
