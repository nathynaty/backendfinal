Rails.application.routes.draw do
  resources :costos
  resources :repuestos
  resources :reparacions
  resources :propietario_vehiculos
  resources :propietarios
  resources :vehiculos
  resources :usuarios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
