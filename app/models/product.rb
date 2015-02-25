class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  validates_presence_of :name, :price, :description
  validates_uniqueness_of :name
  validates_numericality_of :price, :greater_than_or_equal_to => 1


  def self.latest
    Product.order(:updated_at).last
    # Indexes/shows the product that was updated most recently.
    # controller.perform_caching needs to be => true
  end


  private
    # Ensure that there are no line items referencing this product.
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end

end
