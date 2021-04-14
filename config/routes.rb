Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  devise_for :admins, only: :sessions, controllers: {
    sessions: 'admins/sessions'
  }
  get 'input_studies/:id/check' => 'input_studies#check', as: 'input_studies_check'
  resources :input_studies
  get 't_fexercises/:id/check' => 't_fexercises#check', as: 't_fexercises_check'
  resources :t_fexercises

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :reserved_words, only: :show
  get 'reserved_words/:id/check' => 'reserved_words#check', as: 'reserved_words_check'
  get 'reserved_words/all_check' => 'reserved_words#check_all', as: 'reserved_words_check_all'

  root to: 'reserved_words#show' 
end
