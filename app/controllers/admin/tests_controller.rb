class Admin::TestsController < Admin::BaseController

  before_action :set_tests, only: %i[index update_inline]
  before_action :set_test, only: %i[show edit update destroy start update_inline update_readiness]
  before_action :check_test_readiness_in_tests, only: %i[update_inline update destroy edit]
  def update_readiness
    case @test.update_readiness_to_true
    when Test::NO_QUESTIONS
      flash[:alert] = t("admin.tests.update_readiness.no_questions")
    when Test::NO_ANSWERS
      flash[:alert] = t("admin.tests.update_readiness.no_answers")
    when true
      if @test.readiness == false
        @test.update(readiness: true)
        flash[:notice] = t("admin.tests.update_readiness.publish_test")
      else
        @test.update(readiness: false)
        flash[:alert] = t("admin.tests.update_readiness.remove_test")
      end
    end
    redirect_to admin_tests_path
  end

  def index
  end

  def show
  end

  def new
    @test = Test.new
  end

  def create
    @test = current_user.created_tests.build(test_params)
    if @test.save
      redirect_to admin_test_path(@test), notice: t('.success')
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @test.update(test_params)
      redirect_to admin_test_path(@test)
    else
      render :edit
    end
  end

  def update_inline
    if @test.update(test_params)
      redirect_to admin_tests_path
    else
      render :index
    end
  end
  def destroy
    @test.destroy
    redirect_to admin_tests_path
  end

  private

  def check_test_readiness_in_tests
    check_test_readiness(@test)
  end
  def set_tests
    @tests = Test.all
  end
  def set_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :level, :category_id)
  end
end

