class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible :active, :name, :out_of_stock, :picture_url, :price

  def self.all_in_menu
    where(active: true)
  end
  
  def self.all_by_category(category)
    joins(:category).where(categories: { id: category.id })
  end
end
