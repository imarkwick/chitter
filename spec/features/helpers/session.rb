module SessionHelpers

	def sign_up(name = "Izzy", email = "izzy@example.com",
							password = "oranges", password_confirmation = "oranges")
		visit 'users/new'
		fill_in :name, :with => name
		fill_in :email, :with => email
		fill_in :password, :with => password
		fill_in :password_confirmation, :with => password_confirmation
		click_button "Sign up"
	end
end