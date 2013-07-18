require 'spec_helper'

describe Product do
  ACTIVE_PRODUCTS_AMOUNT = 5
  INACTIVE_PRODUCTS_AMOUNT = 5
  CATEGORIES_AMOUNT = 2
  
  before(:each) do 
    FactoryGirl.create_list(:product, ACTIVE_PRODUCTS_AMOUNT, :active)
    FactoryGirl.create_list(:product, INACTIVE_PRODUCTS_AMOUNT, :inactive)
  end
  
  context "menu" do
    it "return only active products" do
      products_in_menu = Product.all_in_menu
      expect(products_in_menu.size).to eql(ACTIVE_PRODUCTS_AMOUNT)
    end   
    
    it "return only products from chosen category" do
      category = FactoryGirl.create(:category)
      FactoryGirl.create_list(:product, CATEGORIES_AMOUNT, category: category)
      
      products_by_category = Product.all_by_category(category)  
      expect(products_by_category.count).to eql(CATEGORIES_AMOUNT)
    end
  end
end
