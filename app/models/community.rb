class Community < ApplicationRecord

  include RailsSortable::Model
  set_sortable :sort

  has_many :homes

  

  # def gmaps4rails_address
  #   "#{address}, #{city}, #{state} #{zip}"
  # end

end
