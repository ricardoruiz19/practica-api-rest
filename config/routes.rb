Rails.application.routes.draw do
  resources :tickets
  resources :localities
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/relacion/:nombre/:localities_id', to: "localities#relacion"
  get '/newticket/:event_id', to: "tickets#newticket"
  get '/updateticket/:id_ticket/:event_id/', to: "tickets#updateticket"
  get '/newlocality/:tipo/:precio/:fecha_limite/', to: "localities#newlocality"
  get '/destroyticket/:t', to: "tickets#destroyticket"
end
