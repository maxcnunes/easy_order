class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible :active, :name, :out_of_stock, :picture_url, :price
end
