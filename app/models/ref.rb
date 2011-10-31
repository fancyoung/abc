class Refer
  include Mongoid::Document
  include Mongoid::Timestamps
  attr_accessible :content

  field :content, :type => String
  
  embedded_in :node
end
