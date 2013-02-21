class Idea < ActiveRecord::Base
  acts_as_taggable

  attr_accessible :content, :tag_list

  belongs_to :user


end
