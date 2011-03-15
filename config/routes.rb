Tacomanager::Application.routes.draw do
  get "tests/index"

  resources :vendors
  root :to => "vendors#index"
end
