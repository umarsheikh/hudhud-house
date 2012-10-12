HudhudHouse::Application.routes.draw do
  get "pages/main"

  root :to => 'pages#main'
end
