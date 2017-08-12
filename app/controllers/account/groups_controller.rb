class Account::GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @groups = current_user.participated_groups
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to account_groups_path, aler: "Group deleted"
  end

  private

  def post_params
    params.require(:group).permit(:title, :description)
  end

end
