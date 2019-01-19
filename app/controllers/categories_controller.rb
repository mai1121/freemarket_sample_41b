class CategoriesController < ApplicationController
  def index
    
  end
  def show
    # 選択したカテゴリー
    @category = Category.find(params[:id])
    @child_categories = @category.children
    # 選択したカテゴリーの子孫要素を取得して変数に代。配列様式で格納されている。
    @descendants_categories = @category.descendants
    
    # idが大きい順（新しい順）にitemを表示
    @items = items(@category,@descendants_categories).sort {|a, b| b <=> a }

    # binding.pry
  
    
  end

  def items(selected_category,descendants_categories)
    post_items = []
    # 選択したカテゴリーの持つitemを配列形式で取得
    items = selected_category.items
    # 配列に追加
    post_items = post_items|items

    descendants_categories.each do |descendants_category|
      items = descendants_category.items
      post_items = post_items|items
    end

    return post_items
  end
end
