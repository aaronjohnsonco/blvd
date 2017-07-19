class HomeImage < ApplicationRecord

  belongs_to :home
  has_attached_file :photo
  validates_attachment :photo, content_type: { content_type: /\Aimage\/.*\Z/ }

  # has_attached_file :image
  # mount_uploader :image, ImageUploader

end
