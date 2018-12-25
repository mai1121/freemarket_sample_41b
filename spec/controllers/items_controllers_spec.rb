require 'rails_helper'

describe ItemsController do
  describe 'GET #index' do
    let(:items) { create_list(:item, 4) }
    before do
      get :index
    end

    it "renders the :index template" do
      expect(response).to render_template :index
    end

    it "assigns the all items to @items" do
      expect(assigns(:items)).to match(items)
    end

    it "assigns the first_id image to each items" do
    end

  end

end
