crumb :root do
  link "メルカリ", root_path
end

crumb :show do
  link "マイページ", users_mypage_path
end

crumb :profile do
  link "プロフィール", users_mypage_profile_path
  parent :show
end

crumb :identification do
  link "本人情報の登録", users_mypage_identification_path
  parent :show
end

crumb :logout do
  link "ログアウト", users_mypage_logout_path
  parent :show
end

crumb :profile do
  link "プロフィール", users_mypage_profile_path
  parent :show
end

crumb :card do
  link "支払い方法", users_mypage_card_path
  parent :show
end

crumb :items do
  link "出品した商品-出品中", users_mypage_items_path
  parent :show
end

crumb :item do
  link "出品確認画面" , "/users/mypage/salingitem/:id(.:format)"
  parent :myitems
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
