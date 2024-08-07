Rails.application.routes.draw do
  get 'financial_records/index'
  get 'financial_records/import'
  get 'financial_records/export'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
