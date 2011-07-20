MetaDemo::Application.routes.draw do
  root :to => 'robots#index'
  resources :robots, :only => [ :index ]
end
