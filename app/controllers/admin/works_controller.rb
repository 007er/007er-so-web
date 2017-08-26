class Admin::WorksController < ApplicationController
  layout "admin"
  
  before_action :authenticate_user!
  before_action :admin_required

  def index
    @works = Work.all
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)

    if @work.save
      redirect_to admin_works_path
    else
      render :new
    end
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])

    if @work.update(work_params)
      redirect_to admin_works_path
    else
      render :edit
    end
  end

  private

  def work_params
    params.require(:work).permit(:name, :description)
  end
end
