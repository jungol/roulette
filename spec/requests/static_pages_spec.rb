require 'rails_helper'
require 'spec_helper.rb'

describe "Static Pages" do
  
  describe "home" do

  	it "has the title home" do
  	  visit root_path
  	  expect(page).to have_selector('h1', text: "home")
  	end
  end
end