class StandController < ApplicationController
  def index
    @list_of_stands = Stand.all

    render({ :template => "stand_templates/index.html.erb"})
  end

  def show
    s_id = params.fetch("path_id")
    @stand = Stand.where({:stand_id => s_id }).first

    render({ :template => "stand_templates/show.html.erb"})
  end
end
