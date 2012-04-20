Rails.application.routes.draw do
  mount BookingSystem::Engine => "/", :as => "bs" # need :as for namespacing

  root :to => "pages#index"
end