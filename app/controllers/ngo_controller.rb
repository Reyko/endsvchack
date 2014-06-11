class NgoController < UsersController
  before_action :authenticate_user!
  
  def edit
    @ngo = current_user
  end

  

end
