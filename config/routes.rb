# frozen_string_literal: true

Rails.application.routes.draw do
  get 'categories/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'users#index'
end
