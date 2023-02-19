class WindController < ApplicationController
  def index
    @list_of_winds = Wind.all

    render({ :template => "wind_templates/index.html.erb"})
  end

  def show
    w_id = params.fetch("path_id")
    @wind = Wind.where({:wind_direction_id => w_id }).first

    render({ :template => "wind_templates/show.html.erb"})
  end
end
