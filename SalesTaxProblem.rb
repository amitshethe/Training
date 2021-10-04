require "pry"
class Item 
    attr_accessor :name,:price,:imported,:extempted,:item_Tax,:total_price
   
    def initialize(value)
        @name =value[:name]
        @price =value[:price]
        @imported = value[:imported]
        @extempted = value[:extempted]
        @item_type = value[:item_type]
        @item_Tax = value[:item_Tax]
        @total_price = value[:total_price]
        # @total_of_total = 0
        # @total_tax = 0
    end
    
end
# class Tax
#     def tax_type
#         $NA = 0
#         $BASIC = 0.10
#         $IMPORTED = 0.05
#         $BOTH = $BASIC+$IMPORTED
#     end
# end
class Cart < Item
    attr_accessor :item_List
    def initialize
        @item_List = Array.new
    end
    def add_to_cart(item)
        item_List << item

    end
    def total 
        
        item_List.each do |item|
            
            if item.imported && !item.extempted
                item.item_Tax =  item.price * 0.15
                item.total_price = ((item.item_Tax + item.price) * 20).round / 20.0
                puts item.name ,item.total_price	  	 
             elsif item.imported && item.extempted
                item.item_Tax =  item.price * 0.05
                item.total_price = ((item.item_Tax + item.price) * 20).round / 20.0
                puts item.name ,item.total_price
             elsif !item.imported && !item.extempted
                item.item_Tax =  item.price * 0.10
                item.total_price = ((item.item_Tax + item.price) * 20).round / 20.0
                puts item.name ,item.total_price
             else
                item.item_Tax = 0
                item.total_price = ((item.item_Tax + item.price) * 20).round / 20.0
                puts item.name ,item.total_price
            end
            if !$total_tax
                $total_tax = item.item_Tax
            else
                $total_tax += item.item_Tax
            end
            if !$total_of_total
                $total_of_total = item.total_price
            else
                $total_of_total += item.total_price
            end
            # if total_of_total == nil 
            #     total_of_total = 0
            #     total_tax = 0
            
            #     binding.pry
            #     total_of_total += item.total_price
            #     total_tax += item.item_Tax
                
            # end
            
       
        end
        # puts "Sales tax #{(item_List[0].total_tax * 20 ).round / 20.0}" 
        # puts "Total bill #{item_List[0].total_of_total}"
        #puts "Sales tax #{total_of_total}" 
        
        puts "Total tax #{$total_tax}"
        puts "Total  #{$total_of_total}"
    end
    
end


class Run
    
    # item1 = Item.new({:name => "Music CD", :item_type => "OTHERS", :price => 14.99, :imported => false, :extempted => false})
    # item2 = Item.new({:name => "Book", :item_type => "BOOK", :price => 12.49, :imported => false, :extempted => true })
    # item3 = Item.new({:name => "ChoclateBar", :item_type => "Food", :price => 0.85, :imported => false, :extempted => true })

    item1 = Item.new({:name => "imported box of chocolates", :item_type => "Food", :price => 10.00, :imported => true, :extempted => true})
    item2 = Item.new({:name => "imported bottle of perfume", :item_type => "Other", :price => 47.50, :imported => true, :extempted => false })
    
    # item1.priintvalue
    cart = Cart.new
    cart.add_to_cart(item1)
    cart.add_to_cart(item2)
    #cart.add_to_cart(item3)
    cart.total
    

end

