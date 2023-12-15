class Admin::BaseController < ApplicationController

  layout 'admin'

  before_action :admin_required!

  private

  def admin_required!
    redirect_to root_path, alert: t('admin.base.not_allowed') unless current_user.admin?
  end
end
