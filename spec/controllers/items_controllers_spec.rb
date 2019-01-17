require 'rails_helper'

describe ItemsController do

  let(:user) { create(:user) }

  describe 'GET #index' do
    before do
      saler = create(:saler)
      buyer = create(:buyer)
      brand = create(:brand)
      category = create(:category)

      num_of_samples = 4
      @items = create_list(:item_with_images, num_of_samples, category_id: category.id, brand_id: brand.id, saler_id: saler.id, buyer_id: buyer.id)
      get :index
    end

    it "renders the :index template" do
      expect(response).to render_template :index
    end

    it "assigns the all items to @items" do
      expect(assigns(:items)).to eq(@items)
    end

    it "assigns the item_images to an item" do
      expect(assigns(:items)[0].item_images).to match(@items[0].item_images)
    end

  end


  describe 'GET #show' do

    before :each do
      saler = create(:saler)
      buyer = create(:buyer)
      brand = create(:brand)
      category = create(:category)

      @item = create(:item_with_images, category_id: category.id, brand_id: brand.id, saler_id: saler.id, buyer_id: buyer.id)
      get :show, params: {id: @item}
    end

    it "assigns the requested item to @item" do
      expect(assigns(:item)).to eq @item
    end

    it "renders the :show template" do
      expect(response).to render_template :show
    end

  end

  describe 'GET #purchase_top' do

    context 'log in' do
      before :each do
        login user

        saler = create(:saler)
        buyer = create(:buyer)
        brand = create(:brand)
        category = create(:category)

        @item = create(:item_with_images, category_id: category.id, brand_id: brand.id, saler_id: saler.id, buyer_id: buyer.id)
        get :purchase_top, params: {id: @item}
      end

      it "assigns the requested item to @item" do
        expect(assigns(:item)).to eq @item
      end

      it "renders the :purchase_top template" do
        expect(response).to render_template :purchase_top
      end
    end

    context 'not log in' do
      before do
        saler = create(:saler)
        buyer = create(:buyer)
        brand = create(:brand)
        category = create(:category)

        @item = create(:item_with_images, category_id: category.id, brand_id: brand.id, saler_id: saler.id, buyer_id: buyer.id)
        get :purchase_top, params: {id: @item}
      end

      it "renders to new_user_session_path" do
        expect(response).to redirect_to(new_user_session_path)
      end
    end

  end

  describe '#purchase' do

  end

end
