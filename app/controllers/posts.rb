get '/' do 
	@posts = Post.all
	erb :index
end

post '/links' do
	story = params["story"]
	Post.create(:story => story)
	redirect to ('/')
end