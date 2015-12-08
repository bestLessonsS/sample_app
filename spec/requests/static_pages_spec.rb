require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the right title 'Home'" do 
    	visit '/static_pages/home'
    	expect(page).to have_title("#{base_title}")
    end

     it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end

  end

  describe "Help page" do 
  	it "should have the content 'Help'" do 
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

  	it "shuold have the right title 'Help'" do
  		visit  '/static_pages/help'
  		expect(page).to have_title("#{base_title} | Help")
  	end
  end

  describe "About page" do 
  	it "should have the content 'About'" do 
  		visit '/static_pages/about'
  		expect(page).to have_content('About')
  	end 

  	it "should have the right title 'About us'" do 
  		visit '/static_pages/about'
  		expect(page).to have_title("#{base_title} | About Us")
  	end
  end

  describe "Contacts page" do 
  	it "should have the content 'Contacts'" do
  		visit '/static_pages/contacts'
  		expect(page).to have_content('Contacts')
  	end

  	it "should have the right title 'Contacts'" do 
  		visit '/static_pages/contacts'
  		expect(page).to have_title("#{base_title} | Contacts")
  	end
  end



end