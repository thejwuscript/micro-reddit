class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  
  validates :body, :title, presence: true
  validates :title, uniqueness: true
  validates_associated :user

end
