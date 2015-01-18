class Pin < ActiveRecord::Base
has_attached_file :image, :styles => { :medium => "300x300>" },
								  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

	validates :description, presence: true
	validates :user_id, presence: true
	has_attached_file :image
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


	belongs_to :user
end
