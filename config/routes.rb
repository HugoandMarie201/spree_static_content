Spree::Core::Engine.add_routes do
  namespace :admin, path: Spree.admin_path do
    resources :pages, path: 'static_pages'
  end
  constraints(Spree::StaticPage) do
    get '/(*path)', to: 'static_content#show', as: 'static'
  end
end
