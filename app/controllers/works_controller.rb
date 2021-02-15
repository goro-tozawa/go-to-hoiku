class WorksController < ApplicationController
  before_action :authenticate_childcare_user!, only: [:new, :edit]
  before_action :set_works, only: [:show, :edit, :update, :destroy, :move_to_index]
  before_action :move_to_index, only: [:edit, :destroy]

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
    @work = Work.find(params[:id])
  end

  def edit
    redirect_to root_path if @work.present?
  end

  def destroy
    if @work.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def move_to_index
    redirect_to action: :index unless current_childcare_user.id == @work.childcare_user_id
  end

  private

  def set_works
    @work = Work.find(params[:id])
  end

  def work_params
    params.require(:work).permit(:work_title, :facility_name, :job_description, :person, :recruiting_days, :recruiting_times, :hourly_wage, :image).merge(childcare_user_id: current_childcare_user.id)
  end
end
