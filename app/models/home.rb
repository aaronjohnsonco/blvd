class Home < ApplicationRecord

  has_many :home_images, dependent: :destroy, inverse_of: :home
  # accepts_nested_attributes_for :home_images, allow_destroy: true
  belongs_to :community
  has_many :features, dependent: :destroy, inverse_of: :home
  accepts_nested_attributes_for :features, allow_destroy: true
  accepts_nested_attributes_for :home_images, allow_destroy: true

  geocoded_by :set_address

  after_validation :geocode

  extend FriendlyId
  friendly_id :address, use: :slugged

  def should_generate_new_friendly_id?
    new_record?
  end

  def set_address
    address + ', ' + city + ', ' + state
  end


end
