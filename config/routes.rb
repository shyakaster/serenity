Rails.application.routes.draw do
  get 'contacts/new', to: 'contacts#new', as: 'contactus'

  resources :contacts, only:[:new,:create]

  get 'gallery/index', to: 'gallery#index', as: 'gallery'

  get 'events/index', to: 'events#index', as: 'events'

  get 'causes/index', to: 'causes#index', as: 'causes'

  get 'about/index', to: 'about#index', as: 'aboutus'

  root 'welcome#index'  
end
