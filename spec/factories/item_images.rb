FactoryBot.define do
  factory :item_image do
    image                  {Faker::Internet.url()}
    item nil
  end
end
