class DiscoverController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @cubes = Cube.where(:user_id => current_user.id)
  end

end
