class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by_category
  	@category = Category.find(params[:id])
  	@products = @category.products
  end

  def category
  end

  def items_by_tag
    @products = Product.where(tag: params[:tag])
    @tag = params[:tag]
  end
end
