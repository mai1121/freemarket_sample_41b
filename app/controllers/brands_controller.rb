class BrandsController < ApplicationController
  def index
    brands = Brand.all
    @initial_strings = [*'ア'..'ン','三',*(1..8)]
    @brands = Brand.brand_lists(brands,@initial_strings)
    @indicate_brands = @initial_strings.zip(@brands)
  end

  def show
    @brands = Brand.where('name LIKE(?)',"#{params[:id]}%")
    @items = Brand.indicate_items(@brands)
    unless @brands[0]
      @brands = []
      @brand = Brand.find(params[:id])
      @items = @brand.items
      @brands << @brand
    end
    @categories = Brand.indicate_categories(@items)
  end
end
