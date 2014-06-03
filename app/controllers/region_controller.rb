class RegionController < ApplicationController


  def destroy
    region = Region.find_by("id" => params["id"])
    region.delete
    redirect_to "/"
  end

  # Receive form submitted from /region/new
  def create
    Region.create("Name" => params["Name"], "Picture_url" => params["url"])
    redirect_to "/"
  end

  # Receive form submitted from /region/edit
  def update
    region = Region.find_by("id" => params["id"])
    region.update("Name" => params["Name"], "Picture_url" => params["url"])
    redirect_to "/"
  end

end
