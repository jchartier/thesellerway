class HomeController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @user_actual = User.find(current_user.id)
    @items = Item.where(:depto_id => current_user.depto_id)
    @depto = Depto.find(current_user.depto_id)
  end
end
