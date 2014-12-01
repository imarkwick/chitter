get '/' do 
	@posts = Post.all
	erb :index
end

post '/posts' do
	story = params["story"]
	Post.create(:story => story)
	redirect to ('/')
end

get '/posts/new' do
	erb :"posts/new"
end
