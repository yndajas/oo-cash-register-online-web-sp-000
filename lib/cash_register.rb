require 'pry'

class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    binding.pry
    @total *= 1 - @discount.to_f / 100
    binding.pry
  end
end