require 'rails_helper'
describe Item do
  describe '#create' do
    it "is valid with all atributte filled" do
     item = FactoryBot.build(:item)

     expect(item).to be_valid
    end

    it "is invalid without a name" do
     item = Item.new(name:"" ,description:"test" ,size: 1 ,status: 1 ,delivery_fee_method: 1 ,delivery_method: 1 ,ships_from: 1 ,days_to_ship: 1 ,price: 1500)
     item.valid?
     expect(item.errors[:name]).to include("can't be blank")
    end

    it "is invalid without a price" do
     item = Item.new(name:"test" ,description:"test" ,size: 1 ,status: 1 ,delivery_fee_method: 1 ,delivery_method: 1 ,ships_from: 1 ,days_to_ship: 1 ,price: "")
     item.valid?
     expect(item.errors[:price]).to include("can't be blank")
    end


  end
end
