class CartItem
  attr_reader :sku, :quantity

  def initialize(sku)
    @sku = sku
    quantity = 1
  end

  def increment_quantity
    @quantity += 1
  end

  def title
    @sku.title
  end

  def price
    @sku.price * @quantity
  end
end
