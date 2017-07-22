Rails.application.routes.draw do
  resources :animals

  validates :name, presence: true
  validates :species, presence: true
  validates :age, presence: true
end
