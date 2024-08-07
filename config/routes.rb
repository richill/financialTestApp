Rails.application.routes.draw do
  root 'financial_records#index'
  resources :financial_records, only: [:index] do
    collection { post :import }
    collection { get :export }
  end

  # get 'financial_records/index'
  # get 'financial_records/import'
  # get 'financial_records/export'
end
