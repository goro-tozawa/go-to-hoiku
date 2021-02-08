class OrdersController < ApplicationController
  def index
    @user_purchase = UserPurchase.new
    @work = Work.find(params[:work_id])
  end
  
  def create
    @user_purchase = UserPurchase.new(order_params)
    
    if @user_purchase.valid?
      @user_purchase.save
      redirect_to root_path
    else
      render action: :index
    end
  end

  
  private
    def order_params
      params.require(:user_purchase).permit(:postal_code, :area_id, :municipality, :house_number, :address, :building_name, :phone_number, :gender).merge(user_id: current_user.id, work_id: params[:work_id])
    end
  end
  



