class UsersController < ApplicationController
  def new
    @sduser = User.new
  end

  def create
    @sduser = User.new(user_params)

    if @sduser.save
      session[:user_id] = @sduser.id  # auto log in
      redirect_to movies_path, notice: "Welcome aboard, #{@sduser.firstname}!"
    else
      render :new
    end
  end

  protected
    def user_params

      params.require(:user).permit!
    end
end
