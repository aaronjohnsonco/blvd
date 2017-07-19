class Image < ApplicationRecord

  belongs_to :home

  # validates_attachment_content_type :photo, content_type: ['image/jpg', 'image/jpeg', 'image/png']

end
