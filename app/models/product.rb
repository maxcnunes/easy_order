class Product < ActiveRecord::Base
  attr_accessible :active, :name, :out_of_stock, :picture_url, :price
end
