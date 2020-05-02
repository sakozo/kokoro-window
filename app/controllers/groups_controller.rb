class GroupsController < ApplicationController
  def index
    @users = User.all
  end
end
