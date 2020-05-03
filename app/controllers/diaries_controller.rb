class DiariesController < ApplicationController
  def create
    diary = Diary.new(diary_params)
    if diary.save
      redirect_to root_path
    else
      
    end
  end
end

private
def diary_params
  params.require(:diary).permit(:diary).merge(user_id: current_user.id)
end
