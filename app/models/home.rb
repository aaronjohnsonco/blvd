class Home < ApplicationRecord

  has_many :home_images, dependent: :destroy
  # accepts_nested_attributes_for :home_images, allow_destroy: true
  belongs_to :community
  has_many :features, dependent: :destroy, inverse_of: :home
  accepts_nested_attributes_for :features, allow_destroy: true

end
