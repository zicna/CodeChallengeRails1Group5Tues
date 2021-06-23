Rails.application.routes.draw do
  get '/parties', to: 'party#index'
  get '/parties/:id', to: 'party#show', as: 'party'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
