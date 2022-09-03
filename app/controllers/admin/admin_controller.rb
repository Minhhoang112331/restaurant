class Admin::AdminController < ActionController::Base
  layout "admin"
  before_action :check_admin

  def check_admin
    return if current_user.present? && current_user.admin?
    redirect_to root_path
  end
end
