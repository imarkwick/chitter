require 'spec_helper'

feature "User signs up" do
	
	scenario "when being a new user visiting the site" do
		expect{ sign_up }.to change(User, :count).by(1)
		expect(page).to have_content("Welcome, Izzy")
		expect(User.first.name).to eq("Izzy")
	end

	def sign_up(name = "Izzy",
							email = "izzy@example.com",
							password = "oranges")
		visit 'users/new'
		expect(page.status_code).to eq(200)
		fill_in :name, :with => name
		fill_in :email, :with => email
		fill_in :password, :with => password
		click_button "Sign up"
	end
end