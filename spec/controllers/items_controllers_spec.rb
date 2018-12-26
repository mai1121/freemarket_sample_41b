require 'rails_helper'
require 'pry-rails'

describe ItemsController do
  describe 'GET #index' do
    before do
      num_of_samples = 4
      @items = create_list(:item, num_of_samples)
      @item_images = []
      @items.each do |item|
        create_list(:item_image, num_of_samples, item: item)
      end

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
