class StudioClient < ActiveRecord::Base
  has_many :tracks, dependent: :destroy
  validates :artist, :album, :role, presence: true
  mount_uploader :image, ImageUploader
end
