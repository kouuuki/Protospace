class Image < ApplicationRecord
  #belongs_to :prototype#, inverse_of: :image
  #validates_presence_of :prototype
  mount_uploader :image, ImageUploader
end
