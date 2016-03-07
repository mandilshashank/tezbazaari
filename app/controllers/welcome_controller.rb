class WelcomeController < ApplicationController
  helper :all

  def index
    @skus = Sku.find_by_sql("select * from skus")
  end
end
