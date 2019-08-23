require "./store_item.rb"
require "./printable.rb"

class Food < Item
  include Printable
  def initialize (options)
    super(options)
    @shelf_life = options[:shelf_life]
  end
end