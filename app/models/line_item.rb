class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end

#  excercise ch-10
#  def total.price
#    price * quantity
#  end  
end