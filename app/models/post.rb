class Post < ApplicationRecord
  validates :spirit, presence: true
  validates :technique, presence: true
  validates :body, presence: true

  belongs_to :user
end
