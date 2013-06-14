UrlShortener::Application.routes.draw do
  resources :links

  match '*path' => 'links#show'

  root to: "links#new"
end
