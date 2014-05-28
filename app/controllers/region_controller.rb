class RegionController < ApplicationController


  def destroy
    region = Region.find_by("id" => params["id"])
    region.delete
    redirect_to "/region"
  end

  # Receive form submitted from /region/new
  def create
    Region.create("Name" => params["id"], "Picture_url" => params["id"])
    redirect_to "/region"
  end

  # Receive form submitted from /region/edit
  def update
    region = Region.find_by("id" => params["id"])
    region.update("Name" => params["id"], "Picture_url" => params["id"])
    redirect_to "/region"
  end

end
