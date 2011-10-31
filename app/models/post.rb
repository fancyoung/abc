class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  attr_accessible :title, :content
  field :title, :type => String
  field :content, :type => String
  referenced_in :author, class_name: 'User'
  referenced_in :updator, class_name: 'User'
end
