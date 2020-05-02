class GroupsController < ApplicationController
  def index
    @users = User.all

    @emotion = Emotion.new

    
  end

end
