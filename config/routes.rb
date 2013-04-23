Monita::Engine.routes.draw do

  root :to => 'watches#index'

  Monita.watches.each do |watch|
    resource :watch, :only => [], :controller => 'watches', :path => watch.path do
      get :show, :as => watch.path, :watch => watch.name
      get :touch, :as => "touch_#{watch.path}", :watch => watch.name
    end
  end

end
