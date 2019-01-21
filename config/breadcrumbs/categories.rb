crumb :categories_index do
  link "カテゴリー一覧", categories_path
end

crumb :categories_show do |category|

  parent_category = category.parent
  
  if parent_category
    grand_parent_category = parent_category.parent
  end

  if grand_parent_category
    link grand_parent_category.name, category_path(grand_parent_category)
    link parent_category.name, category_path(parent_category)
    link category.name, category_path(category)
  elsif parent_category
    link parent_category.name, category_path(parent_category)
    link category.name, category_path(category)
  else
    link category.name, category_path(category)
  end
  
  parent :categories_index

end
