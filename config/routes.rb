Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations] 
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :organizations, only: [:show] do
    collection do
      post 'remove_user/:user_id', to: 'organizations#remove_from_organization', as: 'remove_user'
    end
  end
  resources :orders, only: [:new, :create, :update, :index, :show, :edit] do
    resources :transport_loads, only: [:new, :create]
  end
  resources :address_books, only: [:index, :create, :destroy]
  namespace :admin do
    get 'user_management', to: 'user_management#index'
  end
  namespace :management do
    get 'index', to: 'organizations#index'
  end
  # named user so as not to conflict with devise
  resources :user, only: [:create, :edit, :update], controller: 'users'

  # These are all routes for the template and should be omitted for production
  get 'template', to: "templates#Dashboard.Default"
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
  get 'Pages.Blog', to: "templates#Pages.Blog"
  get 'Pages.Misc.Coming.Soon', to: "templates#Pages.Misc.Coming.Soon"
  get 'Pages.Misc.Error', to: "templates#Pages.Misc.Error"
  get 'Pages.Misc.Faq', to: "templates#Pages.Misc.Faq"
  get 'Pages.Misc.Invoice', to: "templates#Pages.Misc.Invoice"
  get 'Pages.Misc.Invoice.Standalone', to: "templates#Pages.Misc.Invoice.Standalone"
  get 'Pages.Misc.Knowledge.Base', to: "templates#Pages.Misc.Knowledge.Base"
  get 'Pages.Misc.Mailing', to: "templates#Pages.Misc.Mailing"
  get 'Pages.Misc.Mailing.Standalone', to: "templates#Pages.Misc.Mailing.Standalone"
  get 'Pages.Misc.Maintenance', to: "templates#Pages.Misc.Maintenance"
  get 'Pages.Misc.Pricing', to: "templates#Pages.Misc.Pricing"
  get 'Pages.Misc.Search', to: "templates#Pages.Misc.Search"
  get 'Pages.Product.Detail', to: "templates#Pages.Product.Detail"
  get 'Pages.Product.Images', to: "templates#Pages.Product.Images"
  get 'Pages.Product.List', to: "templates#Pages.Product.List"
  get 'Pages.Product.Thumbs', to: "templates#Pages.Product.Thumbs"
  get 'Pages.Profile.Portfolio', to: "templates#Pages.Profile.Portfolio"
  get 'Pages.Profile.Social', to: "templates#Pages.Profile.Social"
  get 'Ui.Components.Alerts', to: "templates#Ui.Components.Alerts"
  get 'Ui.Components.Badges', to: "templates#Ui.Components.Badges"
  get 'Ui.Components.Buttons', to: "templates#Ui.Components.Buttons"
  get 'Ui.Components.Cards', to: "templates#Ui.Components.Cards"
  get 'Ui.Components.Carousel', to: "templates#Ui.Components.Carousel"
  get 'Ui.Components.Charts', to: "templates#Ui.Components.Charts"
  get 'Ui.Components.Collapse', to: "templates#Ui.Components.Collapse"
  get 'Ui.Components.Dropdowns', to: "templates#Ui.Components.Dropdowns"
  get 'Ui.Components.Editors', to: "templates#Ui.Components.Editors"
  get 'Ui.Components.Icons', to: "templates#Ui.Components.Icons"
  get 'Ui.Components.InputGroups', to: "templates#Ui.Components.InputGroups"
  get 'Ui.Components.Jumbotron', to: "templates#Ui.Components.Jumbotron"
  get 'Ui.Components.Modal', to: "templates#Ui.Components.Modal"
  get 'Ui.Components.Navigation', to: "templates#Ui.Components.Navigation"
  get 'Ui.Components.PopoverandTooltip', to: "templates#Ui.Components.PopoverandTooltip"
  get 'Ui.Components.Sortable', to: "templates#Ui.Components.Sortable"
  get 'Ui.Components.Tables', to: "templates#Ui.Components.Tables"
  get 'Ui.Datatables.Default', to: "templates#Ui.Datatables.Default"
  get 'Ui.Datatables.Pagination', to: "templates#Ui.Datatables.Pagination"
  get 'Ui.Datatables.Rows', to: "templates#Ui.Datatables.Rows"
  get 'Ui.Datatables.Scroll', to: "templates#Ui.Datatables.Scroll"
  get 'Ui.Forms.Components', to: "templates#Ui.Forms.Components"
  get 'Ui.Forms.Layouts', to: "templates#Ui.Forms.Layouts"
  get 'Ui.Forms.Validation', to: "templates#Ui.Forms.Validation"
  get 'Ui.Forms.Wizard', to: "templates#Ui.Forms.Wizard"
end
