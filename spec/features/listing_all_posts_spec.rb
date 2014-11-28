require 'spec_helper'

feature 'user browses the list of posts' do 

	before(:each) {
		Post.create(:story => "Hello world!")
	} 

	scenario "when opening the home page" do
		visit '/'
		expect(page).to have_content("Simon says....")
	end
end