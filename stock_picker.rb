def stock_picker(prices)
    max_profit = 0
    buy_day = 0
    sell_day = 0
  
    (0...prices.length - 1).each do |i|
      (i + 1...prices.length).each do |j|
        profit = prices[j] - prices[i]
        if profit > max_profit
          max_profit = profit
          buy_day = i
          sell_day = j
        end
      end
    end
  
    [buy_day, sell_day]
  end
  
  # Example usage:
  result = stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
  puts "Best days to buy and sell: #{result} for a profit of $#{result ? prices[result[1]] - prices[result[0]] : 0}"
  