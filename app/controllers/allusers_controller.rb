class AllusersController < ApplicationController
  
  def index
    @users=User.all
    
    render("/users_index.html.erb")
  end
  
  def show
    user_id=params.fetch("id_to_display")
    
    if user_id == current_user.id.to_s
      @user=current_user
      render("/user_show.html.erb")
    else
      @user=User.find(user_id)
      render("/other_user_show.html.erb")
    end
  end
  
  
end