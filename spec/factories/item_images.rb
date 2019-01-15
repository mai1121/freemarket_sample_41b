FactoryBot.define do
  factory :item_image do
<<<<<<< HEAD
    image                  {Faker::Internet.url()}
    image                  {File.open("#{Rails.root}/public/images/no_image.jpg")}
  end
end
