class UsersController < ApplicationController
  before_action :authenticate_user!

  def update
    @user = current_user
    @user.update(allowed_params)
  end

  def allowed_params #whitelist
    params.require(:user).permit(:first_name, :last_name, :email, :mobile) #for each attribute in the model /white_listed
  end  

end
