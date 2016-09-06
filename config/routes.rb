Rails.application.routes.draw do
  root 'regions#index'
  resources :species, :singular => :species_instance do
    resources :sightings
  end

  resources :regions
end
