AilmentAttributes::Application.routes.draw do
  root :to => "pracs#index"
  resources :pracs
  resources :ailments
end
