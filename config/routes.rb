Tacomanager::Application.routes.draw do
  resources :vendors
  root :to => "welcome#index"
end
