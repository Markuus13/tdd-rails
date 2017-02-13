require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe 'GET #index' do
    it 'assigns all products to @products' do
      product = Product.create
      get :index
      expect(assigns(:products)).to eq([product])
    end
  end
end
