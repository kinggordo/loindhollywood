require 'spec_helper'

describe "Home" do

  describe "GET /" do
    
    it "works" do
      visit root_path
      response.status.should be(200)
    end
    
    it "works for all the #x" do
      (1..6).each do |i|
        visit "#{root_path}"#{i}"
        response.status.should be(200)
      end
    end
  
  end

  describe "searching films" do
    
    before(:each) do
      visit "#{root_path}#2"
      response.status.should be(200)
    end

    it "finds a record" do
      fill_in "search", :with => "hello world"
      click_button
      response.status.should be(200)
    end

    it "searches through free text"
    it "searches nothing"
    it "searches through a company"
    it "searches through a country"
    it "searches through a color"
    it "searches through a sound"


  end

  it "shall not have #...:... strings in the content"
end

