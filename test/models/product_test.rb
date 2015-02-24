require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products #loads fixtures from product_test

  test 'product attributes must not be empty' do
    product = Product.new
    assert product.invalid?
    assert product.errors[:name].any?
    assert product.errors[:price].any?
    assert product.errors[:description].any?
  end

  test 'product price must be positive' do
    product = Product.new(name: 'Vodka',
                          description: 'Lorem ipsum',
                          image: 'image.png')

    product.price = -1
    assert product.invalid?
  end

  test 'product price cannot be 0' do
    product = Product.new(name: 'Vodka',
                          description: 'Lorem ipsum',
                          image: 'image.png')
    product.price = 0
    assert product.invalid?
  end

  test 'product price must be a positive number' do
    product = Product.new(name: 'Vodka',
                          description: 'Lorem ipsum',
                          image: 'image.png')
    product.price = 1
    assert product.valid?
  end
end
