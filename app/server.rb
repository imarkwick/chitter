require 'sinatra'
require 'data_mapper'

env = ENV["RACK_ENV"] || "development"

DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

require './app/models/post'

DataMapper.finalize

DataMapper.auto_upgrade!


get '/' do 
	erb :index
end

