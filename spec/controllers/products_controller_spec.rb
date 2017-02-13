require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe 'GET #index' do
    it 'assigns all products to @products' do
      product = Product.create
      get :index
      expect(assigns(:products)).to eq([product])
    end
  end

  describe 'GET #new' do
    it 'assign a new @product' do
      get :new
      expect(assigns(:product)).not_to be_nil
    end
  end
end
