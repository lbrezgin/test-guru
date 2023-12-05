class TestsController < ApplicationController

  before_action :set_path
  before_action :authenticate_user!
  before_action :set_test, only: %i[show edit update destroy start]
  before_action :set_user, only: %i[start create]

  def index
    @tests = Test.all
  end

  def show
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    @test.author = @user
    if @test.save
      redirect_to @test
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @test.update(test_params)
      redirect_to @test
    else
      render :edit
    end
  end

  def destroy
    @test.destroy
    redirect_to tests_path
  end

  def start
    @user.tests.push(@test)
    redirect_to @user.test_passage(@test)
  end

  private

  def set_test
    @test = Test.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def test_params
    params.require(:test).permit(:title, :level, :category_id)
  end
end
