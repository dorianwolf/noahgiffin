class LiveClient < ActiveRecord::Base
  validates :artist, :image, presence: true
  mount_uploader :image, ImageUploader
end
