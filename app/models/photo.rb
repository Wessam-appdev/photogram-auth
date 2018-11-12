class Photo < ApplicationRecord
  
  validates :user_id, presence: true
  
  
  has_many :likes, :dependent => :destroy
  has_many :fans, :through => :likes, :source => :user
  
  has_many :comments, :dependent => :destroy
  has_many :comment_body, :through => :comments, :source => :body
   
  
  
  
end
