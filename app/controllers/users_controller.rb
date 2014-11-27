class UsersController < ApplicationController
  def new
    @sduser = User.new
  end

  def create
    @sduser = User.new(user_params)

    if @sduser.save
      redirect_to movies_path
    else
      render :new
    end
  end

  protected
    def user_params

      params.require(:user).permit!
    end
end
