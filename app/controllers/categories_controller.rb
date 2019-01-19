class CategoriesController < ApplicationController
  def index
    @root_categories = Category.roots()
  end
  
  def show
    # 選択したカテゴリー
    @category = Category.find(params[:id])
    # 上部に表示する子カテゴリー
    @child_categories = @category.children.take(9)
    # 選択したカテゴリーの子孫要素
    @descendants_categories = @category.descendants
    # ブラウザに表示するitem
    @items = Category.items(@category,@descendants_categories).sort {|a, b| b <=> a }

  end
end
