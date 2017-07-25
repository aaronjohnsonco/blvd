class Community < ApplicationRecord

  include RailsSortable::Model
  set_sortable :sort

  has_many :homes

end
