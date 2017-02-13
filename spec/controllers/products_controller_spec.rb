require 'rails_helper'

class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
end

RSpec.describe ProductsController, type: :controller do
  describe 'GET #index' do
    it 'assigns @products' do
      product = Product.create
      get :index
      expect(assigns(:products)).to eq([product])
    end
  end

end
