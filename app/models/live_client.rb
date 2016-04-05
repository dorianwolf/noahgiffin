class LiveClient < ActiveRecord::Base
  validates :artist, :image, presence: true
end
