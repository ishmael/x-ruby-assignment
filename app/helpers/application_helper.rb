module ApplicationHelper

  # Returns the calculated result after
  # a set of discounts has been deducted
  # (What is the real price after these discounts has been included?)
  #
  # Example:
  # discounted_price(100, 5, 15, 5)
  # => 75
  def discounted_price(price, *perc)
    perc.map! { |percentage| percentage.to_f }
    total_discount = perc.inject { |sum, n| sum + n }
    return if total_discount > 100
    return (price - (price * total_discount / 100)).round(2)
  end

end
