require 'spec_helper'

describe "Web Testing on letcode.in/edit" do
    it "should navigate to the home page" do
      visit "https://letcode.in/edit"
      fullNameInputElement = find(:xpath, "//input[@id='fullName']")
      fullNameInputElement.set('Timothy J. Thacker')
      expect(fullNameInputElement.value).to eq('Timothy J. Thacker')
    end
end