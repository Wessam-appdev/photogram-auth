class AllusersController < ApplicationController
  
  def index
    @users=User.all
    
    render("/users_index.html.erb")
  end
  
  def show
    
    render("/user_show.html.erb")
    
  end
  
  
end