class Admin::AdminsController < ApplicationController
  before_action :authenticate_admin! , only: [:new]


end
