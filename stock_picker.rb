def stock_picker(prices)
  pairs = prices.combination(2).to_a
  pairs.sort! { |a, b| (b[1] - b[0]) <=> (a[1] - a[0]) }
  days = [prices.index(pairs.first[0]), prices.index(pairs.first[1])]
end

p stock_picker([17,3,6,9,15,8,6,1,10])

