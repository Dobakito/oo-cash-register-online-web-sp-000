require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :price
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end 
  
  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    @items << item
    
  end
  
  def apply_discount
    if @discount > 0 
      @taking_off = (@price * @discount)/100
      @total -= @taking_off
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end 
  end
  
  def item
    @items
  end 
  
  def void_last_transaction
  @total -= @price
  end 
end 
