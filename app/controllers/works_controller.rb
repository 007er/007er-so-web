class WorksController < ApplicationController
  def index
    @works = Work.all.recent.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @work = Work.find(params[:id])
  end
end
