FactoryBot.define do
  factory :item do
    name                    {Faker::Commerce.product_name()}
    description             {"test"}
    status                  {"unused"}
    delivery_fee_method     {"shipping_included"}
    days_to_ship            {"shipped_within_1_to_2_days"}
    size                    {"XXS_or_less"}
    ships_from              {"hokkaido"}
    delivery_method         {"pending"}
    price                   {Faker::Commerce.price()}
    category_id             {Category.first().id}
    brand_id                {Brand.first().id}
    saler_id                {User.first().id}
    buyer_id                {User.first().id}
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
