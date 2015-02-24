class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates_presence_of :name, :price, :description
  validates_numericality_of :price, :greater_than_or_equal_to => 1
end
