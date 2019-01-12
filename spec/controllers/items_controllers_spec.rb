require 'rails_helper'

describe ItemsController do
  describe 'GET #index' do
    before do
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

end
