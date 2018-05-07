# == Schema Information
#
# Table name: users
#
#  id       :integer          not null, primary key
#  username :string
#

class User < ApplicationRecord

  validates :username, presence: true, uniqueness: true

  has_many :artworks, :dependent => :destroy,
  primary_key: :id,
  foreign_key: :artist_id,
  class_name: :Artwork

  has_many :shared_artworks,
  primary_key: :id,
  foreign_key: :viewer_id,
  class_name: :ArtworkShare
  # This returns what this User can view

  has_many :artwork_shares, :dependent => :destroy,
  through: :shared_artworks,
  source: :artwork
  # This returns the artworks that the user has shared with others

end
