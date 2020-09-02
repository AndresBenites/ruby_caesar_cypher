stock_array = [25, 0, 53]

def stock_picker(days)
  profit = 0
  best_profit = 0
  best_days_array = []

  days.each_with_index do |price, idx|
    for jdx in idx..days.length - 1
      profit = days[jdx] - price
      if profit > best_profit
        best_profit = profit
        best_days_array = [idx, jdx]
      end
    end
  end
  if best_days_array == []
    return "No profit"
  end
  return best_days_array
end

p stock_picker(stock_array)
