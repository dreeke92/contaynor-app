Rails.application.routes.draw do
  devise_for :users
  root to: 'templates#page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # These are all routes for the template and should be omitted in production
  get 'Apps.Chat', to: "templates#Apps.Chat"
  get 'Apps.MediaLibrary.ViewAudio', to: "templates#Apps.MediaLibrary.ViewAudio"
  get 'Apps.MediaLibrary.ViewFolder', to: "templates#Apps.MediaLibrary.ViewFolder"
  get 'Apps.MediaLibrary.ViewImage', to: "templates#Apps.MediaLibrary.ViewImage"
  get 'Apps.MediaLibrary.ViewVideo', to: "templates#Apps.MediaLibrary.ViewVideo"
  get 'Apps.Survey', to: "templates#Apps.Survey"
  get 'Apps.Survey.List', to: "templates#Apps.Survey.List"
  get 'Apps.Todo.Details', to: "templates#Apps.Todo.Details"
  get 'Apps.Todo.List', to: "templates#Apps.Todo.List"
  get 'Dashboard.Default', to: "templates#Dashboard.Default"
  get 'Blank.Page', to: "templates#Blank.Page"
  get 'Dashboard.Analytics', to: "templates#Dashboard.Analytics"
  get 'Dashboard.Content', to: "templates#Dashboard.Content"
  get 'Dashboard.Default', to: "templates#Dashboard.Default"
  get 'Dashboard.Ecommerce', to: "templates#Dashboard.Ecommerce"
  get 'Menu.Default', to: "templates#Menu.Default"
  get 'Menu.Hidden', to: "templates#Menu.Hidden"
  get 'Menu.Mainhidden', to: "templates#Menu.Mainhidden"
  get 'Menu.Subhidden', to: "templates#Menu.Subhidden"
  get 'Pages.Auth.ForgotPassword', to: "templates#Pages.Auth.ForgotPassword"
  get 'Pages.Auth.Login', to: "templates#Pages.Auth.Login"
  get 'Pages.Auth.Register', to: "templates#Pages.Auth.Register"
  get 'Pages.Blog.Detail.Alt', to: "templates#Pages.Blog.Detail.Alt"
  get 'Pages.Blog.Detail', to: "templates#Pages.Blog.Detail"

end
