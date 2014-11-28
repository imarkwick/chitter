require 'spec_helper'

describe Post do 

	it 'should post to and retrieve from the db' do
		expect(Post.count).to eq(0)
		Post.create(story: 'Hello world!')
		expect(Post.count).to eq(1)
		post = Post.first
		expect(post.story).to eq("Hello world!")
		post.destroy
		expect(Post.count).to eq(0)
	end	
end