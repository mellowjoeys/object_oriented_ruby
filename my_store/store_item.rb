class Item
  attr_reader :name, :price, :weight
  attr_writer :price
  def initialize (options)
    @name = options[:name]
    @price = options[:price]
    @weight = options[:weight]
  end
end

item_1 = Item.new(
                  name: "ruby",
                  price: 300, 
                  weight: 0.05
                  )

puts "#{item_1.name}"
puts "#{item_1.price}"
puts "#{item_1.weight}"



