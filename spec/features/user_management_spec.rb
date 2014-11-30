require 'spec_helper'
require_relative 'helpers/session'

include SessionHelpers

feature "User signs up" do
	
	scenario "when being logged out" do
		expect{ sign_up }.to change(User, :count).by(1)
		expect(page).to have_content("Welcome, Izzy")
		expect(User.first.name).to eq("Izzy")
	end

	scenario "with an email that is already registered" do
		expect{ sign_up }.to change(User, :count).by(1)
		expect{ sign_up }.to change(User, :count).by(0)
		expect(page).to have_content("This email is already taken")
	end

	scenario "with a password that doesn't match" do
		lambda { sign_up('test', 'abc@test.com', 'pass', 'wrong') }.should change(User, :count).by(0)
		expect(current_path).to eq('/users/new')
		expect(page).to have_content("Sorry, there were the following problems with your information.")
	end
end

feature "User signs in" do

end

feature "User signs out" do

end