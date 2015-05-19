class Artist < ActiveRecord::Base
  belongs_to :genre
  has_many :songs

  validates :name, presence: true, length: {minimum: 3}, uniqueness: true
  validates :genre_id, presence: true
end

# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  genre_id   :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_artists_on_genre_id  (genre_id)
#
