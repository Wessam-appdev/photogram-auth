class Like < ApplicationRecord
  
  validates :user_id, presence: true, uniqueness: {
    scope: :photo
  }
  validates :photo_id, presence: true
  
  
  belongs_to :photo
  belongs_to :user
  
end
