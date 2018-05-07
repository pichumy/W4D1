# == Schema Information
#
# Table name: artworks
#
#  id        :integer          not null, primary key
#  title     :string           not null
#  image_url :string           not null
#  artist_id :integer          not null
#

class Artwork < ApplicationRecord

  validates :title,
   :artist_id, presence: true
  validates :image_url, uniqueness: true
  validates :title, uniqueness: { scope: :artist_id,
    message: "Each artist can only have one image per title"
  }

  belongs_to :artist,
  primary_key: :id,
  foreign_key: :artist_id,
  class_name: :User

  has_many :viewers,
  primary_key: :id,
  foreign_key: :artwork_id,
  class_name: :ArtworkShare

end
