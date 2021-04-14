Rails.application.routes.draw do
  get 't_fexercises/check'
  get 't_fexercises/check_all'
  resources :t_fexercises

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :reserved_words, only: :show
  get 'reserved_words/:id/check' => 'reserved_words#check', as: 'reserved_words_check'
  get 'reserved_words/all_check' => 'reserved_words#check_all', as: 'reserved_words_check_all'

  root to: 'reserved_words#show' 
end
