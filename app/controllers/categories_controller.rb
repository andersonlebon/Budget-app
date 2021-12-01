# frozen_string_literal: true

class CategoriesController < ApplicationController # rubocop:todo Style/Documentation
  def index
    @Categories = current_user.categories # rubocop:todo Naming/VariableName
  end
end
