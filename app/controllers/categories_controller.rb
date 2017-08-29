class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @works = @category.works.recent.paginate(:page => params[:page], :per_page => 5)
  end
end
