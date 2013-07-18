class Menu
  class << self
    def all_categories 
      Category.all
    end
    
    def all_products
      Product.where(active: true)
    end
    
    def all_products_by_category(category)
      all_products().joins(:category).where(categories: { id: category.id })
    end
  end
end