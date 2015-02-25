class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates_presence_of :name, :price, :description
  validates_uniqueness_of :name
  validates_numericality_of :price, :greater_than_or_equal_to => 1

  def self.latest
    Product.order(:updated_at).last
    # Indexes/shows the product that was updated most recently.
    # controller.perform_caching needs to be => true
  end
end
