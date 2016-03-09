class WelcomeController < ApplicationController
  helper :all

  def index
    @skus = Sku.find_by_sql("select * from skus")
  end

  def add_to_cart
    @cart = find_cart
    sku = Sku.find(params[:id])
    @cart.add_skus(sku)
  end

  private

  def find_cart
    session[:cart] ||= Cart.new
  end
end
