class Idea < ActiveRecord::Base
  acts_as_taggable

  attr_accessible :content, :tag_list, :title, :innovation, :performance, :culture, :cost, :time, :benefits

  has_and_belongs_to_many :users

  validates :content , presence: true
  validates :title, presence: true
  
end
