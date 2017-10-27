class Prototype < ApplicationRecord
  has_many :images#, inverse_of: :prototype
  belongs_to :user
  accepts_nested_attributes_for :images
  #mount_uploader :image, ImageUploader
end
