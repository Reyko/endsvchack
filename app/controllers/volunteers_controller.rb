class VolunteersController < UsersController
  

  def index
    @users = Volunteer.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @volunteer = current_user
    @countries = Country.all
    @countries = @countries.map{ |country|
      ["#{country[:name]}",country[:id]]
    }
  end

  def allowed_params #whitelist
    params.require(:user).permit(:skype,:role,:relevant_exp,:work_remote,:travel_expenses,:country,:city,:username, :password, :password_confirmation, :current_password)#for each attribute in the model /white_listed
  end

end
