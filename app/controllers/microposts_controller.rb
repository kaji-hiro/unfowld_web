class MicropostsController < ApplicationController
  include SessionsHelper
  before_action :logged_in_user, only: %i[create destroy]
  skip_before_action :verify_authenticity_token

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save!
      flash[:success] = 'Micropost created!'
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy; end

  private

    def micropost_params
      params.require(:micropost).permit(:title, :content, :thumbnail)
    end

    def logged_in_user
      return if logged_in?

      flash[:danger] = 'Please log in.'
      redirect_to login_url
    end
end
