class UsersController < ApplicationController

  def index

  end

  def show
    @user = User.find(params[:id])

    @diary = Diary.new

    @record = Record.new

    #環境変数をJSに渡す
    gon.wheather_api_key = ENV['OPEN_WEATHER_API_KEY']
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
