crumb :brands_index do
  link "ブランド一覧", brands_path
end

crumb :brands_show do |brands|
  brand = brands[0]
  link brand.name, brand_path
  parent :brands_index
end
