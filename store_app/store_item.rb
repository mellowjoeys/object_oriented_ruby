require "./printable.rb"

class Item
  include Printable
  attr_reader :name, :price, :weight
  attr_writer :price
  def initialize (options)
    @name = options[:name]
    @price = options[:price]
    @weight = options[:weight]
  end


end
