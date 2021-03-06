class User < ApplicationRecord
  has_many :posts
  has_many :comments
  
  validates :username, length: { in: 4..10 }
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
end
