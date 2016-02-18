class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by
  end

  def category
  end

  def items_by_price
  end
end
