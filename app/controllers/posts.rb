get '/' do 
	@posts = Post.all
	erb :index
end

post '/posts' do
	story = params["story"]
	Post.create(:story => story)
	redirect to ('/')
end