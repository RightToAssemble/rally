class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find( params[:id] )
    unless current_user.id == @user.id
      flash[:notice] = "You don't have access to that user!"
      redirect_to root_path
      return
    end
  end

end
