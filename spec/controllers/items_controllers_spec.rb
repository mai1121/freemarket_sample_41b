require 'rails_helper'

describe ItemsController do
  describe 'GET #index' do
    before do
      saler = create(:saler)
      buyer = create(:buyer)
      brand = create(:brand)
      category = create(:category)

      num_of_samples = 4

      create_list(:item_with_images, num_of_samples,)
      @items = Item.all
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

  describe 'GET #new' do
    let(:user) { create(:user) }

    context 'log in' do
      before do
       login_user user
      end

      it "renders the :new template with login" do
        get :new
        expect(response).to render_template :new
      end

    end
    context 'not log in' do
      it "redirects to new_user_session_path" do
        get :new
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe 'PATCH #update' do
    let(:user) { create(:user) }
    let(:item) { create(:item_with_images)}

    before do
     login_user user
    end

    context 'can save' do
      it 'locates the requersted @item' do
        patch :update, params: {id: item, item: attributes_for(:item)}
        expect(assigns(:item)).to eq item
      end

      it "changes @item's attributes" do
        patch :update, params: {id: item, item: attributes_for(:item, status: 'close_to_unused',delivery_fee_method: 'cash_on_delivery',days_to_ship: 'shipped_within_2_to_3_days',size: 'XXS_or_SS',ships_from: 'aomori',delivery_method: 'kuronekoyamato')}
        item.reload
        expect(item.status).to eq('close_to_unused')
        expect(item.delivery_fee_method).to eq('cash_on_delivery')
        expect(item.days_to_ship).to eq('shipped_within_2_to_3_days')
        expect(item.size).to eq('XXS_or_SS')
        expect(item.ships_from).to eq('aomori')
        expect(item.delivery_method).to eq('kuronekoyamato')
      end
    end
  end
end
