FactoryBot.define do

  factory :item_image do
    image                  {Faker::Internet.url()}
  end

end
