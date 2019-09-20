class UsersController < ApplicationController
  before_action :authenticate_user!



  def edit
    
  end

  def update
    if current_user.update(user_params)
      redirect to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:users).permit(:name, :email)
  end

end
