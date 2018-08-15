Rails.application.routes.draw do

  root 'marketing#home'
  get '/power_ups', to: 'marketing#power_ups'
  get '/faq', to: 'marketing#faq'
  get '/contact', to: 'marketing#contact'

  post '/contact_form_submit', to: 'marketing#contact_form_submit'

  get 'contacts/new'
  get 'contacts/create'
end
