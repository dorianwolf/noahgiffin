class LiveClient < ActiveRecord::Base
  validates :artist, presence: true
  mount_uploader :image, ImageUploader
end
