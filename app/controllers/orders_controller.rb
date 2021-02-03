class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]
  before_action :set_items, only: [:index, :create, :move_to_index]
  before_action :sold_out, only: [:index]
  before_action :move_to_index, only: [:index]
  
  def index
    @user_purchase = UserPurchase.new
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

    def move_to_index
      if current_childcare_user.id == @work.childcare_user_id
        redirect_to root_path
      end
    end

  
  private
    def order_params
      params.require(:user_purchase).permit(:postal_code, :area_id, :municipality, :house_number, :address, :building_name, :phone_number, :gender).merge(user_id: current_user.id, work_id: params[:work_id])
    end
      
      def set_items
        @work = Item.find(params[:work_id])
      end

      # def sold_out
      #   if @work.purchase.present?
      #     redirect_to root_path
      #   end
      # end
end


