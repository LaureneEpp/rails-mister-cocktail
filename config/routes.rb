Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :cocktails do
     resources :doses, only: [:create]
  #   resources :ingredients, only: [:index, :new, :create]
  end
    resources :doses, only: [:destroy]
  # resources :doses, only: [:show, :edit, :update, :destroy]
  # resources :ingredients, only: [:show, :edit, :update, :destroy]
end
