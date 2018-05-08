# == Schema Information
#
# Table name: artwork_shares
#
#  id         :integer          not null, primary key
#  artwork_id :integer          not null
#  viewer_id  :integer          not null
#

class ArtworkShare < ApplicationRecord

  validates :viewer_id, :artwork_id, presence: true
  validates :artwork_id, uniqueness: { scope: :viewer_id,
    message: "This user has already been shared this piece!"
  }

  belongs_to :viewer,
  primary_key: :id,
  foreign_key: :viewer_id,
  class_name: :User

  has_one :artist,
  through: :artwork,
  source: :artist

  belongs_to :artwork,
  primary_key: :id,
  foreign_key: :artwork_id,
  class_name: :Artwork

  has_many :shared_viewers,
  through: :artwork,
  source: :viewers

  def self.viewable_by(own_id)
    Artwork.left_outer_joins(:viewers).where("viewer_id = #{own_id}").or(Artwork.where("artist_id = #{own_id}"))
  end
end
