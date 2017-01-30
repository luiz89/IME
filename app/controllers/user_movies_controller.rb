class UserMoviesController < ApplicationController
  before_action :authenticate_user!

  def index
    @classfications = current_user.classifications
  end
end
