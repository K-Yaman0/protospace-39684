class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  def show
    user_id = params[:id]
    @user = User.find(user_id)
  end

end
