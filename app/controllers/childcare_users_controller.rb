class ChildcareUsersController < ApplicationController
  def index
  end
  
  def new
    @chidcare_user = Chidcare_user.new
  end

end
