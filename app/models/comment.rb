class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :body, presence: true
  validates_associated :user, :post
end
