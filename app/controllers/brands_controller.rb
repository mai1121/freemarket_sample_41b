class BrandsController < ApplicationController
  def index
    brands = Brand.all
    @initial_strings = [*'ア'..'ン','三',*(1..8)]
    @brands = Brand.brand_lists(brands,@initial_strings)
    @indicate_brands = @initial_strings.zip(@brands)
  end

  def show
    if params.has_key?(:name)
      @brands = Brand.where('name LIKE(?)',"#{params[:name]}%")
      @items = Brand.indicate_items(@brands)
    else
      @brands = []
      @brand = Brand.find(params[:id])
      @items = @brand.items
      @brands << @brand
    end
    @categories = Brand.indicate_categories(@items)
  end
end
