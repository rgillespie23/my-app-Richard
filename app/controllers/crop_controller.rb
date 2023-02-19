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

  def new_crop
    
      input_crop_type = params.fetch("query_crop_type")

    if Crop.where(:crop_type => input_crop_type).at(0) == nil

      a_new_crop = Crop.new
      a_new_crop.crop_type = input_crop_type
      a_new_crop.save

      #have to do 2 lines below because messed up my original tables because I forgot it would automatically assign a column for id 

      a_new_crop.crop_id = a_new_crop.id
      a_new_crop.save

      redirect_to("/crops", { :notice => "Newly added crops will only show up in the table below once the crop has been added to a stand."})
    else
      redirect_to("/crops", { :notice => "Crop has already been created. In order for it to be visible in the table below, add it to at least one stand."})
    end
  end
end
