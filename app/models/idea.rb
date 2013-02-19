class Idea < ActiveRecord::Base
  acts_as_taggable

  attr_accessible :content

  belongs_to :user
end
