class Admin::UsersController < ApplicationController
  def index
    restrict_access_to_admin
    @users = User.all
  end
end
