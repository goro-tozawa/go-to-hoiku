class ChildcareUsersController < ApplicationController
  def index
    @childcare_user = ChildcareUser.new
  end
  def new
    @childcare_user = ChildcareUser.new
  end
  def create
  end
end
