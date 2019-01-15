FactoryBot.define do
  factory :item_image do
    image                  {File.open("#{Rails.root}/public/images/no_image.jpg")}
  end
end
