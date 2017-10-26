require 'spec_helper'

describe "navbar functionality tests" do

  before(:all) do
    @navtest = NavBar.new
  end

  it "should be able to access all links in the navigation bar" do
    @navtest.visit_women
    @navtest.visit_dresses
    @navtest.visit_tshirts
    @navtest.visit_blouses
    @navtest.visit_tops
    @navtest.visit_casual_dresses
    @navtest.visit_evening_dresses
    @navtest.visit_summer_dresses
  end

  # it "should be able to access navigation bar from homepage" do
  #   @navtest.homepage.visit_women
  #   @navtest.homepage.visit_dresses
  #   @navtest.homepage.visit_tshirts
  #   @navtest.homepage.visit_blouses
  #   @navtest.homepage.visit_tops
  #   @navtest.homepage.visit_casual_dresses
  #   @navtest.homepage.visit_evening_dresses
  #   @navtest.homepage.visit_summer_dresses
  # end

  # it "should be able to access navigation bar from sign-in page" do
  #   @navtest.signinpage.visit_women
  #   @navtest.signinpage.visit_dresses
  #   @navtest.signinpage.visit_tshirts
  #   @navtest.signinpage.visit_blouses
  #   @navtest.signinpage.visit_tops
  #   @navtest.signinpage.visit_casual_dresses
  #   @navtest.signinpage.visit_evening_dresses
  #   @navtest.signinpage.visit_summer_dresses
  # end

end
