FactoryBot.define do
  factory :user do
    email                        {"aaa@gmail.com"}
    password                     {"00000000"}
    password_confirmation        {"00000000"}
    first_name                   {"綾波"}
    last_name                    {"れい"}
    first_name_kana              {"アヤナミ"}
    last_name_kana               {"レイ"}
    nickname                     {"rei"}
    phone_number                 {"09011111111"}
    credit_card_num              {"1111222233334444"}
    credit_card_expiration_month   {"11"}
    credit_card_expiration_year    {"32"}
    credit_card_security_num       {"111"}
    profile                        {"こんにちは"}
    icon_image                     {"aaaaa"}
    postal_code                    {"1111111"}
    prefecture                     {"北海道"}
    city                           {"札幌市西区"}
    address                        {"1-1-1"}
    building_name                  {"aaaビル"}
    birth_year                     {"1992"}
    birth_month                    {"11"}
    birth_day                      {"21"}
    uid                            {"00000000000"}
    provider                       {"facebook"}
  end

  factory :saler, class: User do
    email                        {"ccc@gmail.com"}
    password                     {"00000000"}
    password_confirmation        {"00000000"}
    first_name                   {"葛城"}
    last_name                    {"みさと"}
    first_name_kana              {"カツラギ"}
    last_name_kana               {"ミサト"}
    nickname                     {"misato"}
    phone_number                 {"09011111111"}
    credit_card_num              {"1111222233334444"}
    credit_card_expiration_month   {"11"}
    credit_card_expiration_year    {"32"}
    credit_card_security_num       {"111"}
    profile                        {"こんにちは"}
    icon_image                     {"aaaaa"}
    postal_code                    {"1111111"}
    prefecture                     {"北海道"}
    city                           {"札幌市西区"}
    address                        {"1-1-1"}
    building_name                  {"aaaビル"}
    birth_year                     {"1992"}
    birth_month                    {"11"}
    birth_day                      {"21"}
    uid                            {"00000000000"}
    provider                       {"facebook"}
  end

  factory :buyer, class: User do
    email                        {"bbb@gmail.com"}
    password                     {"00000000"}
    password_confirmation        {"00000000"}
    first_name                   {"碇"}
    last_name                    {"しんじ"}
    first_name_kana              {"イカリ"}
    last_name_kana               {"シンジ"}
    nickname                     {"sinnji"}
    phone_number                 {"09011111111"}
    credit_card_num              {"1111222233334444"}
    credit_card_expiration_month   {"11"}
    credit_card_expiration_year    {"32"}
    credit_card_security_num       {"111"}
    profile                        {"こんにちは"}
    icon_image                     {"aaaaa"}
    postal_code                    {"1111111"}
    prefecture                     {"北海道"}
    city                           {"札幌市西区"}
    address                        {"1-1-1"}
    building_name                  {"aaaビル"}
    birth_year                     {"1992"}
    birth_month                    {"11"}
    birth_day                      {"21"}
    uid                            {"00000000000"}
    provider                       {"facebook"}
  end
end
