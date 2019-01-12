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
    category_id             {1}
    brand_id                {1}
    saler_id                {1}
    buyer_id                {2}
  end

  factory :item_with_an_image, parent: :item do
    after(:build) do |item|
      item.item_images << build(:item_image, item: item)
    end
  end


  factory :item_with_images, parent: :item do
    after(:build) do |item|
      item.item_images << build(:item_image, item: item)
      item.item_images << build(:item_image, item: item)
    end
  end

  factory :item_with_no_images, parent: :item do
  end

end
