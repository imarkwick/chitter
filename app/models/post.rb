class Post

	include DataMapper::Resource

	property :id, Serial
	property :story, String

end