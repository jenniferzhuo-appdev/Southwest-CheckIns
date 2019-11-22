Rails.application.routes.draw do



  # Routes for the Flight resource:

  # CREATE
  match("/insert_flight", { :controller => "flights", :action => "create", :via => "post"})
          
  # READ
  match("/flights", { :controller => "flights", :action => "index", :via => "get"})
  
  match("/flights/:id_from_path", { :controller => "flights", :action => "show", :via => "get"})
  
  # UPDATE
  
  match("/modify_flight/:id_from_path", { :controller => "flights", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_flight/:id_from_path", { :controller => "flights", :action => "destroy", :via => "get"})

  #------------------------------

  # ======= Add Your Routes Above These =============
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
