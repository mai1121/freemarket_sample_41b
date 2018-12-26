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
     expect(item.errors[:name]).to include("can't be blank")
    end

    it "is invalid without a price"  do
     item = build(:item_with_images, price: "")
     item.valid?
     expect(item.errors[:price]).to include("can't be blank")
    end

    it "is valid with an image" do
     item = build(:item_with_an_image)
     expect(item).to be_valid
    end

    it "is invalid with no images" do
     item = build(:item_with_no_images)
     item.valid?
     expect(item.errors[:item_images]).to include("is too short (minimum is 1 character)")
    end

  end
end
