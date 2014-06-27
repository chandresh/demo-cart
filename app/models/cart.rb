class Cart < ActiveRecord::Base
  has_many :line_items

  def total
    sum = 0
    line_items.each do |item|
      sum += item.total
    end
    sum
  end

end
