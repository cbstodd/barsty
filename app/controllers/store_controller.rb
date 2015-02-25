class StoreController < ApplicationController
  def index
    @products = Product.order(:name['DESC'])
  end
end
