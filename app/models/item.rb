class Item < ApplicationRecord
  has_attached_file :image, :storage => :cloudinary, :path => ':id/:style/:filename', styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  belongs_to :category
end
