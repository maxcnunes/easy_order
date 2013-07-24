require 'spec_helper'

describe MenusController do
  CATEGORIES_AMOUNT = 4

  context "GET 'index'" do
    it "returns http success" do
      get :index
      response.should be_success
    end

    it "load all categories" do
      get :index
      FactoryGirl.create_list(:category, CATEGORIES_AMOUNT)
      assigns(:categories).should_not be_nil
    end
  end

end
