class LineItem < ActiveRecord::Base

  belongs_to :product

  def total
    price * quantity
  end

end
