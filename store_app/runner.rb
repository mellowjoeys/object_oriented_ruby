# Runner Code
require "./store_item.rb"
require "./printable.rb"
require "./processed.rb"
require "./unprocessed.rb"
require "./food.rb"

item_1 = Item.new(
                  name: "ruby",
                  price: 300, 
                  weight: 0.05
                  )

puts "#{item_1.name}"
puts "#{item_1.price}"
puts "#{item_1.weight}"