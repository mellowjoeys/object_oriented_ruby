class Item
  attr_reader :name, :price, :weight
  attr_writer :price
  def initialize (options)
    @name = options[:name]
    @price = options[:price]
    @weight = options[:weight]
  end

  def print_info
    puts "#{ name } weighs #{ weight } and costs #{ price }."
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

class Food < Item
  def initialize (options)
    super(options)
    @shelf_life = options[:shelf_life]
  end
end

class Processed < Food
  def initialize (options)
    super(options)
    @brand = options[:brand]
  end
end

class Unprocessed < Food
  def initialize (option)
    super(options)
    @farm_name = options[:farm_name]
  end
end