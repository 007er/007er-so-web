class Admin::WorksController < AdminController

  def index
    @category = Category.find(params[:category_id])
    @works = Work.all
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
      redirect_to admin_category_path(@category)
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:category_id])
    @work = Work.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @work = Work.find(params[:id])

    if @work.update(work_params)
      redirect_to admin_category_path(@category)
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to admin_category_path, alert: "Work delete"
  end

  private

  def work_params
    params.require(:work).permit(:name, :description, :category_id)
  end
end
