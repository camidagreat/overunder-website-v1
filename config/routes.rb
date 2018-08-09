Rails.application.routes.draw do
  root 'marketing#home'
  get '/power_ups', to: 'marketing#power_ups'
  get '/faq', to: 'marketing#faq'
  get '/contact', to: 'marketing#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
