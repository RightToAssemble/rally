class SettingsController < ApllicationController
  def edit
    @user = User.find( params[:user_id] )
    @profile = @user.profile
  end
end
