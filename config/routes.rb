Rails.application.routes.draw do

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  get("/", { :controller => "home", :action => "home"})

  get("/stands", { :controller => "stand", :action => "index"})

  get("/stands/:path_id", { :controller => "stand", :action => "show"})

  get("/winds", { :controller => "wind", :action => "index"})

  get("/winds/:path_id", { :controller => "wind", :action => "show"})

  get("/insert_stand", { :controller => "stand", :action => "create"})

  get("/insert_new_crop", { :controller => "stand", :action => "create_crop"})

  get("/delete_stand/:path_id", { :controller => "stand", :action => "delete_stand"})

  get("/crops", { :controller => "crop", :action => "index"})

  get("/crops/:path_id", { :controller => "crop", :action => "show"})

  get("/insert_crop", { :controller => "crop", :action => "new_crop"})

end
