class Product < ActiveRecord::Base
  attr_accessor :description, :inventory
  has_many :ordered_products
  has_many :orders, :through => :ordered_products

  def inventory_available?
    self.inventory > 0 ? true : false
  end
end
