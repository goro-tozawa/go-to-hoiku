class WorksController < ApplicationController
  def index
  end
  def new
   @work = Work.new
  end

  def create 
    @work  = Work.new(work_params)

    if @work.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def work_params
     params.require(:work).permit(:job_description, :item_name, :details, :category_id, :recruiting_number_id, :recruiting_days, :recruiting_times, :hourly_wage, :image).merge(childcare_user_id: current_user.id)
  end
end
