class Track < ActiveRecord::Base
  belongs_to :studio_client

  validates :title, presence: true
  validates :studio_client_id, presence: true
end
