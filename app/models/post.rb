class Post < ApplicationRecord
  belongs_to :user
  
  validates :body, :title, :user_id, presence: true
  validates :title, uniqueness: true

end
