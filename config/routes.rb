WwWineriesWeb::Application.routes.draw do
  root "wineries#index"
  get '/wineries'  => "wineries#index"
  resources :wineries
end
