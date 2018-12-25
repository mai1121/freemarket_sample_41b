require 'rails_helper'
describe Item do
  describe '#create' do
    it "is valid with all atributte filled" do
     item = build(:item)

     expect(item).to be_valid
    end

    it "is invalid without a name" do
     item = build(:item, name: "")
     item.valid?
     expect(item.errors[:name]).to include("can't be blank")
    end

    it "is invalid without a price" do
     item = build(:item, price: "")
     item.valid?
     expect(item.errors[:price]).to include("can't be blank")
    end


  end
end
