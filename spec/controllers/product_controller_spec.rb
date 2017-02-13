require 'rails_helper'

RSpec.describe ProductController, type: :controller do
  describe 'GET #index' do
    it 'assigns @products' do
      product = Product.create
      get :index
      expect(assigns(:products)).to eq([product])
    end
  end

end
