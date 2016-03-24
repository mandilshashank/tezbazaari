class WelcomeController < ApplicationController
  helper :all

  def index
    if(params.has_key?(:cat))
      @skus = Sku.joins(:sku_categorie).where("sku_categories.cat_name = ?", params[:cat])
    else
      @skus = Sku.find_by_sql("select * from skus")
    end
    @sku_categories = SkuCategorie.all
    @cart = get_cart
  end

  def add_to_cart
    @cart = find_cart
    sku = Sku.find(params[:id])
    @cart.add_skus(sku)
    redirect_to :action => 'index'
  end

  private

  def get_cart
    session[:cart]
  end

  def find_cart
    session[:cart] ||= Cart.new
  end
end
