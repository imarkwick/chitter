require 'sinatra'
require 'data_mapper'
require_relative 'data_mapper_setup'
require './app/helpers/helper'

require './app/models/post'
require './app/models/user'

enable :sessions
set :session_secret, 'super secret'

get '/' do 
	@posts = Post.all
	erb :index
end

post '/links' do
	story = params["story"]
	Post.create(:story => story)
	redirect to('/')
end

get '/users/new' do
	erb :"users/new"
end

post '/users' do
	@user = User.create(:name => params[:name],
							:email => params[:email],
							:password => params[:password])
	session[:user_id] = @user.id
	redirect to('/')
end