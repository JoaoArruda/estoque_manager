Rails.application.routes.draw do
  resources :estoques
  resources :operacaos
  resources :pessoas
  resources :enderecos
  resources :cidades
  resources :estados
  resources :produtos
  resources :unidades
  resources :grupo_produtos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
