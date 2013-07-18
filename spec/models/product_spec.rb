require 'spec_helper'

describe Product do
  before(:each) { @products_on_menu = Product.all_on_menu }
  context "on menu" do
    it "should retunrs only active products" do
      expect(@products_on_menu.any? { |p| !p.active }).to be_false
      expect(@products_on_menu.any? { |p| p.active }).to be_true
    end

    it "should retunrs only avalibale in stock products" do
      expect(@products_on_menu.any? { |p| p.out_of_stock }).to be_false
      expect(@products_on_menu.any? { |p| !p.out_of_stock }).to be_true
    end
  end
end
