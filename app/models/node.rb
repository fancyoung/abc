class Node
  include Mongoid::Document
  include Mongoid::Timestamps
  attr_accessible :name

  field :name, :type => String
  
  embeds_many :refers
  has_and_belongs_to_many :rels, class_name: 'Node', inverse_of: nil
end
