class Cart < ApplicationRecord
    has_many :lineitems, dependent: :destroy

    def add_item(product)
        current_item = self.lineitems.find_by(product: product.id)
        if current_item
            current_item.quantity += 1
        else
            current_item = self.lineitems.build(product: product)
        end
        current_item
    end

    def total_price
        self.lineitems.to_a.sum{|item| item.item_total_price}
    end
end
