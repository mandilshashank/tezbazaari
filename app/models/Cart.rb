class Cart
  attr_reader :items

  def initialize
    @items = []
  end

  def add_skus(sku)
    @items << sku
  end
end
