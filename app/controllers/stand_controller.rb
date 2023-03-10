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

  def create

    input_stand_name = params.fetch("query_name")
    input_best_wind = params.fetch("query_best_wind")
    input_worst_wind = params.fetch("query_worst_wind")
    input_best_wind = params.fetch("query_best_wind")
    input_stand_type = params.fetch("query_stand_type")
    input_latitude = params.fetch("query_latitude")
    input_longitude = params.fetch("query_longitude")
    
    if Wind.where(:wind_direction =>input_best_wind).at(0) != nil && Wind.where(:wind_direction => input_worst_wind).at(0) != nil && Type.where(:type_of_stand => input_stand_type).at(0) != nil
      a_new_stand = Stand.new

      a_new_stand.stand_name = input_stand_name
      a_new_stand.latitude = input_latitude
      a_new_stand.longitude = input_longitude
      a_new_stand.best_wind_id = Wind.where(:wind_direction =>input_best_wind).at(0).wind_direction_id
      a_new_stand.worst_wind_id = Wind.where(:wind_direction => input_worst_wind).at(0).wind_direction_id
      a_new_stand.type_of_stand = Type.where(:type_of_stand => input_stand_type).at(0).type_of_stand_id
      a_new_stand.save

      #have to do 2 lines below because messed up my original tables because I forgot it would automatically assign a column for id 

      a_new_stand.stand_id = a_new_stand.id
      a_new_stand.save

      #have to do below to add a new acreage to the acreage table before I go to my show page for the new stand

      a_new_acreage = Acreage.new
      input_acreage = params.fetch("query_acreage")
      a_new_acreage.acreage = input_acreage

      a_new_acreage.save

      #have to do 2 lines below because messed up my original tables because I forgot it would automatically assign a column for id 

      a_new_acreage.acreage_id = a_new_acreage.id
      a_new_acreage.save

      a_new_stand.acreage_id = Acreage.where(:acreage => input_acreage).at(0).acreage_id
      a_new_stand.save

      redirect_to("/stands/" + a_new_stand.stand_id.to_s)
    else
      redirect_to("/stands/", { :notice => "Please try to enter the new stand information again. Check Capitalization of winds and make sure you are choosing an adequate stand type."})
    end

  end

  def create_crop
    input_stand_id = params.fetch("input_stand_id")
    input_crop_type = params.fetch("query_crop")

    if Crop.where( :crop_type => input_crop_type).at(0) != nil
      a_new_foodsource = Foodsource.new
      a_new_foodsource.stand_id = input_stand_id
      a_new_foodsource.crop_id = Crop.where(:crop_type => input_crop_type).at(0).crop_id
      a_new_foodsource.save

      #have to do 2 lines below because messed up my original tables because I forgot it would automatically assign a column for id
       
      a_new_foodsource.food_source_id = a_new_foodsource.id
      a_new_foodsource.save

      redirect_to("/stands/" + input_stand_id.to_s)
    else
      redirect_to("/stands/" + input_stand_id.to_s, { :notice => "Invalid crop type. Check capitalization and note that available crop types are limited"})
    end
  end

  def delete_stand
    the_id = params.fetch("path_id")
    matching_stands = Stand.where({ :stand_id => the_id})
    the_stand = matching_stands.at(0)
    the_stand.destroy
    redirect_to("/stands")
  end

end
