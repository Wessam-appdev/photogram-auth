class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, uniqueness: true
  
  has_many :photos
  
  has_many :likes, :dependent => :destroy
  has_many :liked_photos, :through => :likes, :source => :photo
  
  
end
