class Product < ActiveRecord::Base
  attr_accessible :active, :name, :out_of_stock, :picture_url, :price

  def self.all_on_menu
    where(active: true, out_of_stock: false)
  end
end
