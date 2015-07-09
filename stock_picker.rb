# Implement a method #stock_picker that takes in an array of stock prices,
# one for each hypothetical day. It should return a pair of days representing
# the best day to buy and the best day to sell. Days start at 0.

def stock_picker(days)
  pairs = {}

  days.each.with_index do |buy_price, buy_idx|
    days.each.with_index do |sell_price, sell_idx|
      next if sell_idx < buy_idx
      pairs[[buy_idx, sell_idx]] = sell_price - buy_price
    end
  end
  pairs.key(pairs.values.max)
end