class OrdersController < ApplicationController
  def index
    @user_purchase = UserPurchase.new
  end
  
  def create

  end

  
  private
    def order_params
      params.require(:user_purchase).permit(:postal_code, :area_id, :municipality, :house_number, :address, :building_name, :phone_number, :gender).merge(user_id: current_user.id, work_id: params[:work_id])
    end
      
  



