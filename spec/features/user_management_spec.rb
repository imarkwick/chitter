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
		expect(page).to have_content("Simon says Sign up Sign in")
	end
end

feature "User signs in" do

	before(:each) do
		User.create(:name => "testing", :email => "test@test.com",
								:password => "test", :password_confirmation => "test")
	end

	scenario "with correct credentials" do
		visit '/'
		expect(page).not_to have_content("Welcome, testing")
		sign_in('test@test.com', "test")
		expect(page).to have_content("Welcome, testing")
	end

	scenario "with incorrect credentials" do
		visit '/'
		expect(page).not_to have_content("Welcome, testing")
		sign_in('test@test.com', 'wrong')
		expect(page).not_to have_content("Welcome, testing")
	end

end

feature "User signs out" do

	before(:each) do
		User.create(:name => "testing", :email => "test@test.com",
								:password => "test", :password_confirmation => "test")
	end

	scenario "while being signed in" do
		sign_in('test@test.com', 'test')
		click_button "Sign out"
		expect(page).to have_content("Good bye!")
		expect(page).not_to have_content("Welcome, test")
	end
end





