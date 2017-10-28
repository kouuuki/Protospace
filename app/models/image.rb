class Image < ApplicationRecord
  #belongs_to :prototype#, inverse_of: :image
  #validates_presence_of :prototype
  validates :image, presence: true
  mount_uploader :image, ImageUploader
end
