class MenusController < ApplicationController
 def index
    @categories = Menu.all_categories
  end

  def products_by_category
    category = Category.find(params[:category_id])
    @products = Menu.all_products_by_category(category)
    render :json => {:data => @products, :status => :success}
  end
end
