class MenusController < ApplicationController
  respond_to :html

  def index
    Menu.all_products
  end
end
