class Idea < ActiveRecord::Base
  attr_accessible :content

  acts_as_taggable
end
