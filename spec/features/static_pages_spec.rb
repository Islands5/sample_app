require 'rails_helper'
include ApplicationHelper

feature "Static pages" do
  
  feature "Home page" do
    before {visit root_path}

    scenario "should have the content 'Sample App'" do
      expect(page).to have_content('Sample App')
    end

    scenario "should have the right title" do
      expect(page).to have_title(full_title(''))
    end

    scenario "should not have a custom page title" do
      expect(page).not_to have_title('| Home')
    end

  end
  
  feature "Help page" do
    before {visit help_path}
    scenario "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end
  end

  feature "About page" do
    before {visit about_path}
    scenario "should have the content 'About Us'" do
      expect(page).to have_content('About Us')
    end
  end

  feature "Contact page" do
    before {visit contact_path}
    scenario "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end

    scenario "should have the title 'Contact'" do
      expect(page).to have_title(full_title('Contact'))
    end

  end

end
