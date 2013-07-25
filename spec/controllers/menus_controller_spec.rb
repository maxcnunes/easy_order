require 'spec_helper'

describe MenusController do
  CATEGORIES_AMOUNT = 4

  context "GET 'index'" do
    it "returns http success" do
      get :index
      response.should be_success
    end

    it "load all categories" do
      Menu.should_receive(:all_categories)
      get :index
    end
  end

  context "GET 'products_by_category'" do
    it "load products by category" do
      category = FactoryGirl.create(:category)
      Menu.should_receive(:all_products_by_category).with(category)
      get :products_by_category, category_id: category.id
    end

    it "respond with json" do
      category = FactoryGirl.create(:category)
      get :products_by_category, category_id: category.id
      response.content_type.should == Mime::JSON
    end
  end

end
