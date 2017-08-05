class UsersController < ApplicationController
  before_action :set_user, :authenticate_user!
  
  def show
    @reviews = current_user.reviews
  end
  
  def update
    current_user.update

  end
  
  def edit
  end
  
  private
  
  def set_user
    @user = User.find(params[:id])
  end
  
end
