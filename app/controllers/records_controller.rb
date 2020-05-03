class RecordsController < ApplicationController
  def create
    record = Record.new(record_params)
    if record.save
      redirect_to root_path
    else
      
    end
  end
end

private
def record_params
  params.require(:record).permit(:location, :weather, :temp, :pressure, :happy_level, :stress_level).merge(user_id: current_user.id)
end