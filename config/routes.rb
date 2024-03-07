Rails.application.routes.draw do

  namespace :admin do
    resources :gists, only: %i[create index]
  end

  root 'tests#index'

  resources :feedbacks, only: [:new, :create]

  devise_for :users, path: :gurus, path_names: { sign_in: :login, sign_out: :logout }

  resources :tests, only: :index do
    member do
      post :start
    end
  end

  resources :test_passages, only: %i[show update] do
    member do
      get :result
    end
  end

  namespace :admin do
    resources :tests do
      patch :update_inline, on: :member
      patch :update_readiness, on: :member

      resources :questions, shallow: true do
        resources :answers, shallow: true
      end
    end
  end
end


