class GroupsController < ApplicationController
  def index
    flash[:notice] = "007er！你好！"
    @groups = Group.all
  end
end
