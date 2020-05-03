class UsersController < ApplicationController

  def index

  end

  def show
    @user = User.find(params[:id])

    @diary = Diary.new
  end

  def edit
  end

  def update
    user = User.find(current_user.id)
    if user.update(user_params)
      redirect_to user_path
    else
      render new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :icon)
  end
end
