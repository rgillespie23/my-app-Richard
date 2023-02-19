class CropController < ApplicationController
  def index
    @list_of_crops = Crop.all

    render({ :template => "crop_templates/index.html.erb"})
  end
  def show
    c_id = params.fetch("path_id")
    @crop = Crop.where({:crop_id => c_id }).first

    render({ :template => "crop_templates/show.html.erb"})
  end
end
