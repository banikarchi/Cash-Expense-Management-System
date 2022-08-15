class UsersController < ApplicationController
  def index
    @users=User.all 

    
  end
  def show
    @user=current_user
   
    
  end
  def new
    @user=User.new
  end
  def create
    @user= User.new(user_params)
    if @user.save
      flash.now[:notice]="Sucessfully Registered"
      redirect_to root_path
    else
      flash.now[:notice]=@user.errors.full_messages.to_sentence
      render :new
    end


  end
  private 
  def user_params
    params.require(:user).permit(:email, :password, :is_admin)
  end
end
