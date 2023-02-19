Rails.application.routes.draw do

  get("/", { :controller => "home", :action => "home"})

  get("/stands", { :controller => "stand", :action => "index"})

  get("/stands/:path_id", { :controller => "stand", :action => "show"})

  get("/winds", { :controller => "wind", :action => "index"})

  get("/winds/:path_id", { :controller => "wind", :action => "show"})

  get("/insert_stand", { :controller => "stand", :action => "create"})

end
