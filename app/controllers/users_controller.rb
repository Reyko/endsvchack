class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    
  end

  def edit 
    @user = current_user
  end
end
