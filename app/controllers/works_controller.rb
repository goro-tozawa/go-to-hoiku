class WorksController < ApplicationController
  def index
    @works = Work.includes(:childcare_user)

  end

  def new
   @work = Work.new
  end

  def create 
    @work = Work.new(work_params)

    
    if @work.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def show
  end

  private
  
  def work_params
     params.require(:work).permit(:work_title, :facility_name, :job_description, :person, :recruiting_days, :recruiting_times, :hourly_wage, :image).merge(childcare_user_id: current_childcare_user.id)
  end
end
