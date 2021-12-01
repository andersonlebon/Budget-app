# frozen_string_literal: true

class CategoriesController < ApplicationController # rubocop:todo Style/Documentation
  def index
    @Categories = current_user.categories # rubocop:todo Naming/VariableName
  end
  def show
    @Category = current_user.categories.find(params[:id]) # rubocop:todo Naming/VariableName
  end
  def new
    @Category = current_user.categories.new # rubocop:todo Naming/VariableName
  end
  def create
    @Category = current_user.categories.create(category_params) # rubocop:todo Naming/VariableName
    if @Category.save
      redirect_to categories_path
    else
      render :new
    end
  end
  def destroy
    @Category = current_user.categories.find(params[:id]) # rubocop:todo Naming/VariableName
    @Category.destroy
    redirect_to categories_path
  end
end
