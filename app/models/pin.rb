class Pin < ActiveRecord::Base
	validates :description, presence: true

	belongs_to :user
	validates :user_id, presence: true
end
