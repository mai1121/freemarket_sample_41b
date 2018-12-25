FactoryBot.define do

  factory :item do
    name                   {"test"}
    description            {"test"}
    size                    {1}
    status                  {1}
    delivery_fee_method     {1}
    delivery_method         {1}
    ships_from              {1}
    days_to_ship            {1}
    price                   {1200}
  end

end
