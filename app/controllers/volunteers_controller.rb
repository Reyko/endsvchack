class VolunteersController < UsersController
  
  def edit
    @volunteer = current_user
  end

  def allowed_params #whitelist
    params.require(:user).permit(:skype,:role,:relevant_exp,:work_remote,:travel_expenses)#for each attribute in the model /white_listed
  end

end
