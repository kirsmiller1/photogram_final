Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "photos#index"
  # Routes for the Follow resource:

  # CREATE
  get("/follows/new", { :controller => "follows", :action => "new_form" })
  post("/create_follow", { :controller => "follows", :action => "create_row" })

  # READ
  get("/follows", { :controller => "follows", :action => "index" })
  get("/follows/:id_to_display", { :controller => "follows", :action => "show" })

  # UPDATE
  get("/follows/:prefill_with_id/edit", { :controller => "follows", :action => "edit_form" })
  post("/update_follow/:id_to_modify", { :controller => "follows", :action => "update_row" })

  # DELETE
  get("/delete_follow/:id_to_remove", { :controller => "follows", :action => "destroy_row" })
  get("/delete_follow_from_sender/:id_to_remove", { :controller => "follows", :action => "destroy_row_from_sender" })
  get("/delete_follow_from_receiver/:id_to_remove", { :controller => "follows", :action => "destroy_row_from_receiver" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  get("/comments/new", { :controller => "comments", :action => "new_form" })
  post("/create_comment", { :controller => "comments", :action => "create_row" })
  post("/create_comment_from_photo", { :controller => "comments", :action => "create_row_from_photo" })

  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  get("/comments/:id_to_display", { :controller => "comments", :action => "show" })

  # UPDATE
  get("/comments/:prefill_with_id/edit", { :controller => "comments", :action => "edit_form" })
  post("/update_comment/:id_to_modify", { :controller => "comments", :action => "update_row" })

  # DELETE
  get("/delete_comment/:id_to_remove", { :controller => "comments", :action => "destroy_row" })
  get("/delete_comment_from_author/:id_to_remove", { :controller => "comments", :action => "destroy_row_from_author" })
  get("/delete_comment_from_photo/:id_to_remove", { :controller => "comments", :action => "destroy_row_from_photo" })

  #------------------------------

  # Routes for the Like resource:

  # CREATE
  get("/likes/new", { :controller => "likes", :action => "new_form" })
  post("/create_like", { :controller => "likes", :action => "create_row" })
  post("/create_like_from_photo", { :controller => "likes", :action => "create_row_from_photo" })

  # READ
  get("/likes", { :controller => "likes", :action => "index" })
  get("/likes/:id_to_display", { :controller => "likes", :action => "show" })

  # UPDATE
  get("/likes/:prefill_with_id/edit", { :controller => "likes", :action => "edit_form" })
  post("/update_like/:id_to_modify", { :controller => "likes", :action => "update_row" })

  # DELETE
  get("/delete_like/:id_to_remove", { :controller => "likes", :action => "destroy_row" })
  get("/delete_like_from_fan/:id_to_remove", { :controller => "likes", :action => "destroy_row_from_fan" })
  get("/delete_like_from_photo/:id_to_remove", { :controller => "likes", :action => "destroy_row_from_photo" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # Routes for the Photo resource:

  # CREATE
  get("/photos/new", { :controller => "photos", :action => "new_form" })
  post("/create_photo", { :controller => "photos", :action => "create_row" })

  # READ
  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:id_to_display", { :controller => "photos", :action => "show" })

  # UPDATE
  get("/photos/:prefill_with_id/edit", { :controller => "photos", :action => "edit_form" })
  post("/update_photo/:id_to_modify", { :controller => "photos", :action => "update_row" })

  # DELETE
  get("/delete_photo/:id_to_remove", { :controller => "photos", :action => "destroy_row" })
  get("/delete_photo_from_owner/:id_to_remove", { :controller => "photos", :action => "destroy_row_from_owner" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
