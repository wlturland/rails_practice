class Song < ActiveRecord::Base
  belongs_to :artist

  validates :name, presence: true, length: {minimum: 3}
  # validates :genre_id, presence: true
  validates :artist_id, presence: true
end

# Validate multiple feilds at once
# validates :course, :description, :honors. :credit, presence: true

# Other validations
# validates :terms_of_service, acceptance: true
# validates :card_number, presence: true, if: :paid_with_card?
	# def paid_with_card
		# payment_type == 'card'
	# end

# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  artist_id  :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_songs_on_artist_id  (artist_id)
#
