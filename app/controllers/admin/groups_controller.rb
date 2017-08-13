class Admin::GroupsController < Admin::AdminsController

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end
end
