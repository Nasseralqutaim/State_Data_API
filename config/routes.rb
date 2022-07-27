Rails.application.routes.draw do
  get 'leads/export', to: 'leads#export'
end
