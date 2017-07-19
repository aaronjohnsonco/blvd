class AddAttachmentPhotoToHomeImages < ActiveRecord::Migration
  def self.up
    change_table :home_images do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :home_images, :photo
  end
end
