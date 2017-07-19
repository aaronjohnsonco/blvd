class Home < ApplicationRecord

  has_many :home_images, dependent: :destroy
  accepts_nested_attributes_for :home_images, allow_destroy: true

end
