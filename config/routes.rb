WwWineriesWeb::Application.routes.draw do
  get '/wineries'  => "wineries#index"
  resources :wineries
end
