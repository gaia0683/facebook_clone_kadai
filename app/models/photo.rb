class Photo < ApplicationRecord
mount_uploader :image, PhotoUploader
