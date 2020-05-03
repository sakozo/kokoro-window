class EmotionsController < ApplicationController
  def create
    emotion = Emotion.new(emotion_params)
    if emotion.save
      redirect_to root_path
    else
      
    end
  end

  private
  def emotion_params
    params.require(:emotion).permit(:emotion, :status).merge(user_id: current_user.id)
  end
end
