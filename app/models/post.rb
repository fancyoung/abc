class Post
  include Mongoid::Document
  attr_accessible :title, :body
  field :title, :type => String
  field :content, :type => String
end
