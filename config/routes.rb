Rails.application.routes.draw do

  resources :data, :path => 'states', :as => 'states' do
    resources :comments 
    
  end
  
  get "/data" => "data#index"
  get "/data/:state" => "data#show"
  
end
