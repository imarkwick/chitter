require 'spec_helper'

feature 'User posts a new story' do 
	scenario "when browsing the homepage" do
		expect(Post.count).to eq(0)
		sign_up
		visit '/posts/new'
		add_post("Hello world!")
		expect(Post.count).to eq (1)
		post = Post.first
		expect(post.story).to eq("Hello world!")
	end

end