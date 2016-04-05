class StudioClient < ActiveRecord::Base
  has_many :tracks, dependent: :destroy
  validates :artist, :image, :album, :role, presence: true
end
