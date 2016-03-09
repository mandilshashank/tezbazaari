class Cart
  attr_reader :items

  def initialize
    @items = []
  end

  def add_skus(sku)
    current_item = @items.find { |item| item.sku == sku }
    if current_item
      current_item.increment_quantity
    else
      @items << CartItem.new(sku)
    end
  end
end
