class BrandsController < ApplicationController
  def index
    @brand = Brand.all
  end
  def show
    # @brand = Brand.find_by(name: params[:id])
    # 前方一致であいまい検索して配列で取得
    @brands = Brand.where('name LIKE(?)',"#{params[:id]}%")
    # binding.pry
    @items = Brand.indicate_items(@brands)
    @categories = Brand.indicate_categories(@items)


  end
end
