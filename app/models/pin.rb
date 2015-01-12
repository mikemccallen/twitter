class Pin < ActiveRecord::Base
	validates :description, presence: true
end
