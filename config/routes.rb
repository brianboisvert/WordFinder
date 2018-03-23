Rails.application.routes.draw do
  resources :kims_thoughts do
    collection do
      get 'real_talk'
    end
  end
  resources :rhymes
  resources :word_inputs do
    collection do
      get 'random'
      delete 'delete_all'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
