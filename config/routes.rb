Rails.application.routes.draw do
  root to: 'main#index'
  get '/small' => 'main#party_s'
  get '/medium' => 'main#party_m'
  get '/large' => 'main#party_l'
end
