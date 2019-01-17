require 'rails_helper'
describe Item do
  describe '#create' do
    it "is valid with all atributte filled" do
     item = build(:item_with_images)
     expect(item).to be_valid
    end

    it "is invalid without a name"  do
     item = build(:item_with_images, name: "")
     item.valid?
     expect(item.errors[:name]).to include("を入力してください")
    end

    it "is invalid without a price"  do
     item = build(:item_with_images, price: "")
     item.valid?
     expect(item.errors[:price]).to include("を入力してください")
    end

    it "is valid with an image" do
     item = build(:item_with_an_image)
     expect(item).to be_valid
    end

    it "is invalid with no images" do
     item = build(:item_with_no_images)
     item.valid?
     expect(item.errors[:item_images]).to include("は1文字以上で入力してください")
    end

    it "is invalid without category_id" do
      item = build(:item_with_an_image, category_id: "")
      item.valid?
      expect(item.errors[:category]).to include("を入力してください")
    end

    it "is invalid with category_id that doesn't exist in categories table" do
      item = build(:item_with_an_image, category_id: 999999)
      item.valid?
      expect(item.errors[:category]).to include("を入力してください")
    end

    it "is valid without brand_id" do
      item = build(:item_with_an_image, brand_id: "")
      expect(item).to be_valid
    end

  end
end
