class Post

	include DataMapper::Resource

	# belongs_to :user	

	property :id, Serial
	property :story, String

end