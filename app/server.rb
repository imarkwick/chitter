require 'sinatra'
require 'data_mapper'
require 'rack-flash'

require './app/models/post'
require './app/models/user'

require './app/helpers/helper'
require_relative 'data_mapper_setup'

enable :sessions
set :session_secret, 'super secret'
use Rack::Flash

get '/' do 
	@posts = Post.all
	erb :index
end

post '/links' do
	story = params["story"]
	Post.create(:story => story)
	redirect to ('/')
end

get '/users/new' do
	@user = User.new
	erb :"users/new"
end

post '/users/new' do
	@user = User.create(:name => params[:name],
							:email => params[:email],
							:password => params[:password],
							:password_confirmation => params[:password_confirmation])
	if @user.save
		session[:user_id] = @user.id
		redirect to ('/')
	else
		flash.now[:errors] = @user.errors.full_messages
		erb :"users/new"
	end
end