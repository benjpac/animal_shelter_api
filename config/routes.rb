Rails.application.routes.draw do
  resources :animals

  constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        resources :animals
      end
    end
  end
end
