class AdminController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user! #需要验证是否登录

  before_action :require_is_admin #需要验证是否为admin

  layout "admin"
end
