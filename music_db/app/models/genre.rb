class Genre < ActiveRecord::Base
	has_many :artists

	validates :name, presence: true, length: {minimum: 3}, uniqueness: true
  	# validates :genre_id, presence: true
end

# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
