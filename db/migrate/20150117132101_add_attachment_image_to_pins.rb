class AddAttachmentImageToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |f|
      f.attachment :image
    end
  end

  def self.down
    remove_attachment :pins, :image
  end
end
