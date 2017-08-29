class WorksController < ApplicationController
  def index
    @works = Work.all.recent.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @category = Category.find(params[:category_id])
    @work = Work.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @work = Work.new
  end

  def create
    @category = Category.find(params[:category_id])
    @work = Work.new(work_params)
    @work.category = @category


    if @work.save
      redirect_to admin_categories_path(@category)
    else
      render :new
    end
  end


  private

  def work_params
    params.require(:work).permit(:name, :description, :category_id)
  end
end
