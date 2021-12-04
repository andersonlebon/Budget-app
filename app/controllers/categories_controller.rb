# frozen_string_literal: true

class CategoriesController < ApplicationController # rubocop:todo Style/Documentation
  before_action :authenticate_user!
  def index
    @categories = current_user.categories # rubocop:todo Naming/VariableName
  end
  def show
    @category = current_user.categories.find(params[:id]) # rubocop:todo Naming/VariableName
    @transacs = @category.transacs # rubocop:todo Naming/VariableName
    # sum all transac
  end
  def new
    @category = current_user.categories.new # rubocop:todo Naming/VariableName
  end
  def create
    @category = current_user.categories.create(category_params) # rubocop:todo Naming/VariableName
    if @category.save

      redirect_to user_categories_path
    else
      flash[:alert] = "icon && name should not be empty"
      render :new
    end
  end
  def destroy
    @category = current_user.categories.find(params[:id]) # rubocop:todo Naming/VariableName
    @Category.destroy
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
