class Prototype < ApplicationRecord
  has_many :images
  belongs_to :user
  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :images
end
