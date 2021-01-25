class WorksController < ApplicationController
  def index
    @user = User.new
  end
end
