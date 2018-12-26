require 'rails_helper'

describe ItemsController do
  describe 'GET #index' do
    before do
      @items = create_list(:item, 4)
      get :index
    end

    it "renders the :index template" do
      expect(response).to render_template :index
    end

    it "assigns the all items to @items" do
      expect(assigns(:items)).to eq(@items)
    end

    it "assigns the first_id image to each items" do

    end

  end

end
