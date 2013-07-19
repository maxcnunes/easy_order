require 'spec_helper'

describe Menu do
  PRODUCTS_AMOUNT = { active: 5, inactive: 5, by_category: 3 }
  CATEGORIES_AMOUNT = 4

  before(:each) do
    FactoryGirl.create_list(:product, PRODUCTS_AMOUNT[:active], :active)
    FactoryGirl.create_list(:product, PRODUCTS_AMOUNT[:inactive], :inactive)
  end

  it "return all categories" do
    FactoryGirl.create_list(:category, CATEGORIES_AMOUNT)

    categories = Menu.all_categories

    expect(categories.size).to eql(CATEGORIES_AMOUNT)
  end

  it "return only active products" do
    products_in_menu = Menu.all_products
    expect(products_in_menu.size).to eql(PRODUCTS_AMOUNT[:active])
  end

  context "with selected category" do
    it "return only products from chosen category" do
      category = FactoryGirl.create(:category_with_products, products_count: PRODUCTS_AMOUNT[:by_category])

      products_by_category = Menu.all_products_by_category(category)

      expect(products_by_category.size).to eql(PRODUCTS_AMOUNT[:by_category])
    end
  end
end
