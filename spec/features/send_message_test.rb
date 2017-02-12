require 'rails_helper'
feature "the signin process", :type => :feature do

  scenario "signs me in" do
    visit '/'
    expect(page).to_not have_content('sss')
  end
end
