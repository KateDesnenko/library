# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "books#index"
  resources :groups, only: [:show]
  resources :authors, only: [:show]
  resources :books, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
