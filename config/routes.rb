Tacomanager::Application.routes.draw do
  resources :vendors
  root :to => "vendors#index"
end
