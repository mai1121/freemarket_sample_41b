class CategoriesController < ApplicationController
  def index
    @root_categories = Category.roots()
  end
  
  def show
    @category = Category.find(params[:id])
    @child_categories = @category.children.take(9)
    @descendants_categories = @category.descendants
    @items = Category.items(@category,@descendants_categories).sort {|a, b| b <=> a }
  end
end
