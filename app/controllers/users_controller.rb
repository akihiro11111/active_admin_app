class UsersController < ApplicationController

  def index
    user = User.new(params_user_search)
    @users = user.search
    gon.labels = ["Red", "Blue", "Yellow", "Green", "Purple", "Orenge"]
    gon.scores = [1, 2, 3, 4, 5, 6]
  end

  private

  def params_user_search
    params.permit(:search_name, :search_age, :search_address)
  end
end
