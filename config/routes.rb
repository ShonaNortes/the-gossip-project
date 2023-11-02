Rails.application.routes.draw do
  root 'gossips#index'

  resources :gossips, only: [:index, :new, :create]
  resources :users, except: [:new]

  get '/users/new_signup', to: 'users#new_signup', as: 'new_signup'

  get '/contact', to: 'gossips#contact'
  get '/team', to: 'gossips#team'
  get '/home', to: 'gossips#home'

  get '/welcome_page/:first_name', to: 'welcome#landing_page'

  # Route pour afficher un formulaire de création de nouveau potin
  get '/gossips/new', to: 'gossips#new'
end
