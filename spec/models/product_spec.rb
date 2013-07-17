require 'spec_helper'

describe Product do

  before(:each) do
    2.times { FactoryGirl.build(:product) }
  end

  context "As a User I want to see" do
    it "the menu with pictures, price and description" do
      all_products = Product.all
      expect(all_products.count).to eq(2)
    end
  end

end
