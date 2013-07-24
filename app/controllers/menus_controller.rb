class MenusController < ApplicationController
  respond_to :html

  def index
    @categories = Menu.all_categories
    respond_to { |format| format.html }
  end
end
