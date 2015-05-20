class Dog < ActiveRecord::Base
	belongs_to :owner, foreign_key: 'owner_id'

	validates :name, presence: true, length: {minimum: 3}
  	validates :owner_id, presence: true
end
