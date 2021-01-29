class ChildcareUsersController < ApplicationController
  def index
  end
 
  def new
    # @childcare_user = Childcare_user.new(childcare_user_params)
  end

  def create
  end

#   private
#   def childcare_user_params
#     params.require(:childcare_user).permit(:facility_name, :facility_name_kana, :business_form, :facility_address, :facility_phone_number, :representative :representative_phone_number, :price,:times_id, :encrypted_password, :self_introduction)
#  end
end
