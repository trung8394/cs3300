Rails.application.routes.draw do

  devise_for :authors
  root to: "blog/projects#index"

  # url expect .../author/projects/...
  namespace :authors do
    resources :projects
  end

  #url expect .../projects/...
  scope module: 'blog' do
    get 'about' => 'pages#about', as: :about
    get 'contact' => 'pages#contact', as: :contact
    get 'projects' => 'projects#index', as: :projects
    get 'projects/:id' => 'projects#show', as: :project
    # projects/:id ~~ projects/usernamehere => params[:id] == 'usernamehere'

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
