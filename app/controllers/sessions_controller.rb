class SessionsController < ApplicationController
  $total_price = 0
  
  def new
  end

   def create
    user = User.find_by_username(params[:username])
   
      session[:user_id] = user.id
      redirect_to root_url
    
    
  end
  def destroy
  session[:user_id] = nil
  redirect_to root_url
end
end
