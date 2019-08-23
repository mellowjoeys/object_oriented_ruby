require ".store_item.rb"
require "./food.rb"
require "./printable.rb"

class Unprocessed < Food
  include Printable
  def initialize (option)
    super(options)
    @farm_name = options[:farm_name]
  end
end