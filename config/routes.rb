Rails.application.routes.draw do

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
