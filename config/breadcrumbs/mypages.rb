crumb :users_show do
  link "マイページ", users_mypage_path
end

crumb :users_profile do
  link "プロフィール", users_mypage_profile_path
  parent :users_show
end

crumb :users_identification do
  link "本人情報の登録", users_mypage_identification_path
  parent :users_show
end

crumb :users_logout do
  link "ログアウト", users_mypage_logout_path
  parent :users_show
end

crumb :users_profile do
  link "プロフィール", users_mypage_profile_path
  parent :users_show
end

crumb :users_card do
  link "支払い方法", users_mypage_card_path
  parent :users_show
end

crumb :users_items do
  link "出品した商品-出品中", users_mypage_items_path
  parent :users_show
end

crumb :users_item do
  link "出品確認画面" , "/users/mypage/salingitem/:id(.:format)"
  parent :users_items
end
