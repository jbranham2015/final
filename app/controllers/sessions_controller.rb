class SessionsController < ApplicationController

  def logout
    cookies["user_id"] = nil
    redirect_to "/", :notice => "Please come back soon, we are always adding new trips!"
  end

  def authenticate
    the_user = User.find_by("username" => params["username"])
    if the_user != nil
      if the_user["password"] == params["password"]
        cookies["user_id"] = the_user["id"]
        redirect_to "/", :notice => "Welcome"
      else
        logger.debug "show me the money"
        redirect_to "/login", :notice => "Unknown password."
      end
    else
      redirect_to "/login", :notice => "Unknown username."
    end
  end

end
