class UsersController < ApplicationController
  before_action :set_user, :authenticate_user!
  
  def show
    @reviews = current_user.reviews
  end
  
  private
  
  def set_user
    @user = User.find(params[:id])
  end  
end
