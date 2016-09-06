Rails.application.routes.draw do
  resources :species, :singular => :species_instance
end
