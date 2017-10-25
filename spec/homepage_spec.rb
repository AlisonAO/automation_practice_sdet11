require 'spec_helper'

describe 'homepage' do

  before(:all) do
    @auto_site = AutomationPracticeSite.new
  end

  it 'should have a clickable "contact us" link' do
    @auto_site.homepage.visit_home_page
    @auto_site.homepage.click_contact_us_link
  end

  it 'should have a clickable "log in" link' do
    @auto_site.homepage.visit_home_page
    @auto_site.homepage.click_sign_in_link
  end

  it 'should have a sales promotion bar at the top of the screen' do
    @auto_site.homepage.find(:xpath, '//*[@id="header"]/div[1]/div/div/a/img').visible?
  end

  it 'should have the site logo on the page' do
    @auto_site.homepage.find(:xpath, '//*[@id="header_logo"]/a/img').visible?
  end

  # Top Search Bar Tests
  it 'checks a search text field is present' do
    @auto_site.homepage.find('#search_query_top').visible?
  end

  it 'checks the search submit button present' do
    @auto_site.homepage.find(:xpath, '//*[@id="searchbox"]/button').visible?
  end

  it 'checks that the text entered matches what is expected' do
    @auto_site.homepage.fill_in('search_query', :with => 'red')
    expect(@auto_site.homepage.find_field('search_query').value).to eq('red')
  end

  it 'checks the search button works and url contains correct query' do
    @auto_site.homepage.find(:xpath, '//*[@id="searchbox"]/button').click
    expect(@auto_site).to have_content('red')
    # sleep 3
#
#     session.fill_in('q', :with => 'Capybara')
# session.click_button('Search')
# expect(session).to have_content('Capybara')

  end



end
