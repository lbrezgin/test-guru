class Admin::BadgesController < Admin::BaseController

  before_action :set_badges, only: %i[index]
  before_action :set_badge, only: %i[show destroy]

  def index
  end

  def show
  end

  def new
    @badge = Badge.new
  end

  def create
    @badge = Badge.new(badge_params)
    if @badge.save
      redirect_to admin_badge_path(@badge), notice: t('admin.badges.create.success')
    else
      render :new, notice: t('admin.badges.create.fail')
    end
  end

  def destroy
    if @badge.destroy
      redirect_to admin_badges_path, notice: t('admin.badges.destroy.success')
    else
      flash[:notice] = t('admin.badges.destroy.fail')
    end
  end

  private

  def set_badges
    @badges = Badge.all
  end

  def set_badge
    @badge = Badge.find(params[:id])
  end

  def badge_params
    params.require(:badge).permit(:title, :rule, :rule_value)
  end
end









