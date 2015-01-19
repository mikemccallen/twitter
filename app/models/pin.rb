class Pin < ActiveRecord::Base

	validates :description, presence: true
	validates :user_id, presence: true
	has_attached_file :image, styles: { medium: "500x500>", small: "200x200>"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


	belongs_to :user
end
