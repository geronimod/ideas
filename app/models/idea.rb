class Idea < ActiveRecord::Base
  acts_as_taggable

  attr_accessible :content, :tag_list, :title, :innovation, :performance, :culture

  belongs_to :user

  validates :content, presence: true
  
  validates :user_id, presence: true
end
