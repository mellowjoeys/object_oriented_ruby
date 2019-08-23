require "./store_item.rb"
require "./food.rb"
require "./printable.rb"

class Processed < Food
  include Printable
  def initialize (options)
    super(options)
    @brand = options[:brand]
  end
end