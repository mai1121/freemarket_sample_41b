class BrandsController < ApplicationController
  def index
    @brand = Brand.all
  end
  def show
    @brand = Brand.find_by(name: params[:id])
    # binding.pry
    @items = @brand.items

    @categories = Brand.find_categories(@items)

    # binding.pry
  end
end
