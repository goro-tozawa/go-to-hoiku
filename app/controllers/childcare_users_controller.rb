class ChildcareUsersController < ApplicationController
  def index
  end
  
  def new
   @childcare_user = Childcare_user.new 
  end
end
