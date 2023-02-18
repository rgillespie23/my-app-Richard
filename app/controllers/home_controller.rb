class HomeController < ApplicationController
  def home

    render({ :template => "home_templates/home.html.erb"})
  end
end
