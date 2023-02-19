class MapController < ApplicationController

  def practice_map

    render({ :template => "map_templates/practice.html.erb"})
  end

end
