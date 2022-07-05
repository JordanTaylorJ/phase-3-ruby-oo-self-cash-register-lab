require 'pry'

class CashRegister

    attr_accessor :total, :items, :last_item, :last_item_price
    attr_reader :discount

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_item_price = last_item_price
        #@last_item = last_item
    end

    def add_item(title, price, quantity=1)
        new_price = price * quantity
        self.total = new_price + total
        #self.last_item = title
        self.last_item_price = -price * quantity
        quantity.times do 
            self.items = items << title
        end
    end

    def apply_discount
        if (discount > 0)
            discount_total = (total * discount) / 100
            self.total = total - discount_total
            return "After the discount, the total comes to $#{total}."
        else 
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        #self.items =- last_item

        if self.items == []
            self.total = 0.0
        else
            self.total = total + last_item_price 
        end
        #binding.pry
    end

end

