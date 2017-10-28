class Prototype < ApplicationRecord
  has_many :images#, inverse_of: :prototype
  has_many :comments
  belongs_to :user
  accepts_nested_attributes_for :images
  #mount_uploader :image, ImageUploader
  validates :title, presence: true
  validates :catch, presence: true
  validates :concept, presence: true
end
