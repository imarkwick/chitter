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

require_relative 'controllers/users'
require_relative 'controllers/posts'

