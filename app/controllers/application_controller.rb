class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :set_timezone

  def require_is_admin
    if !current_user.admin?
      redirect_to "/", alert: "You are not admin."
    end
  end

  def set_timezone
    if current_user && current_user.time_zone
      Time.zone = current_user.time_zone
    end
  end
end
