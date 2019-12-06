class UsersController < ApplicationController
  def index; end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      logger.debug('成功')
    else
      render 'new'
    end
  end

  def edit; end

  def update; end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
