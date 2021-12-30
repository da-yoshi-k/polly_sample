Rails.application.routes.draw do
  root 'static_pages#top'
  resources :rooms, only: %i[index show] do
    resources :messages, only: %i[create]
  end
end
