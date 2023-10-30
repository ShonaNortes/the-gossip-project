Rails.application.routes.draw do
  root 'gossips#index'

  get '/gossips', to: 'gossips#index'

  get '/contact', to: 'gossips#contact'

  get '/team', to: 'gossips#team'

  get '/welcome_page/:first_name', to: 'welcome#landing_page'


  # Route pour afficher un formulaire de création de nouveau potin
  get '/gossips/new', to: 'gossips#new'

  # Route pour afficher un potin spécifique
  get '/gossips/:id', to: 'gossips#show', as: 'gossip'

  # Route pour afficher un formulaire d'édition de potin existant
  get '/gossips/:id/edit', to: 'gossips#edit', as: 'edit_gossip'

  # Route pour créer un nouveau potin
  post '/gossips', to: 'gossips#create'

  # Route pour mettre à jour un potin existant
  patch '/gossips/:id', to: 'gossips#update'

  # Route pour supprimer un potin
  delete '/gossips/:id', to: 'gossips#destroy' 
end
