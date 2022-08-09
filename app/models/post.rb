class Post < ApplicationRecord
  validates :content, presence: true, length: { in: 1..140 }
  mount_uploader :picture, PictureUploader

  belongs_to :user
end
