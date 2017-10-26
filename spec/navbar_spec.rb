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

  it "should be able to access navigation bar from homepage" do
    @navtest.navbar.visit_women
    @navtest.navbar.visit_dresses
    @navtest.navbar.visit_tshirts
    @navtest.navbar.visit_blouses
    @navtest.navbar.visit_tops
    @navtest.navbar.visit_casual_dresses
    @navtest.navbar.visit_evening_dresses
    @navtest.navbar.visit_summer_dresses
  end

end
