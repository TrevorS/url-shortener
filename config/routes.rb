UrlShortener::Application.routes.draw do
  resources :links

  root to: "links#new"
end
