class Post
  # Access posts, files within views/posts
  # Attributes: title, url, filename

  # Read my list of post files
  # Create an array of post objects, an array contatining instances of the post class

  # Post.all
  # => [#<Post:0x007fc6019a5348>, #<Post:0x007fc6019a5168>]

  # with the attributes set
  # Post.all => [post,post]

  attr_accessor :title, :url
  def initialize(array)
    @title = array[-1].split(".")[0]
    @url   = "/posts/#{@title}"

  end

  # Create an array of post objects
  # * this means search all, within the current directory
  def self.all
    Dir.glob("views/posts/*").collect do |filepath|
      a = filepath.split("/")
      self.new(a)
    end
  end

  #attr_accessor :posts
# Dynamically display a link to each file within /views/posts on your homepage
  #def initialize
    #@posts = Dir.glob("views/*")
  #end

  #def self.reader

  #end

end
