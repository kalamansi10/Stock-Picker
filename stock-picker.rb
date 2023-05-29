def stock_picker(stock_prices)
    sell_day = 1
    current_profit = 0
    best_days = []
    stock_prices.each do |buy_price|
        sell_prices = stock_prices[sell_day..-1]
        sell_day += 1
        sell_prices.each do |sell_price|
            profit = sell_price - buy_price
            if current_profit < profit
                best_days = [buy_price, sell_price] 
                current_profit = sell_price - buy_price
            end
        end
    end
    bday = stock_prices.index(best_days[0])
    sday = stock_prices[bday..-1].index(best_days[1]) + stock_prices.index(best_days[0])
    p [bday, sday]
end

stock_picker([17,3,6,9,15,8,6,1,10])


