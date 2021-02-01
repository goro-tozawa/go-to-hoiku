class WorksController < ApplicationController
  def index
  #  @works = Work.includes(:childcare_user).order("created_at DESC")
  end

  def new
   @work = Work.new
  end

  def create 
    @work = Work.new(work_params)
    # binding.pry
    
    if @work.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  private
  
  def work_params
     params.require(:work).permit(:work_title, :facility_name, :job_description, :person, :recruiting_days, :recruiting_times, :hourly_wage, :image).merge(childcare_user_id: current_childcare_user.id)
  end
end
