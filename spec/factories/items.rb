FactoryBot.define do
  factory :item do
    name                   {Faker::Commerce.product_name()}
    description            {"test"}
    size                    {1}
    status                  {1}
    delivery_fee_method     {1}
    delivery_method         {1}
    ships_from              {1}
    days_to_ship            {1}
    price                   {Faker::Commerce.price()}

  end

  factory :item_with_an_image, parent: :item do
    after(:build) do |item|
      item.item_images << build(:item_image)
    end
  end

  factory :item_with_images, parent: :item do
    after(:build) do |item|
      item.item_images << build(:item_image)
      item.item_images << build(:item_image)
    end
  end

  factory :item_with_no_images, parent: :item do
  end

end
