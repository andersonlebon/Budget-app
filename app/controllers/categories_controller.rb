class CategoriesController < ApplicationController
  def index
    @Categories = current_user.categories
  end
end
