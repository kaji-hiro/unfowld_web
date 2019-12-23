class StaticPagesController < ApplicationController
  include ApplicationHelper
  include SessionsHelper

  def home
    @micropost = current_user.microposts.build if logged_in?
  end

  def about; end

  def contact
    if params[:message].present?
      notify_slack('email:' + params[:email] + "\n\n" + params[:message])
      flash[:success] = '送信が完了しました'
      redirect_to action: 'contact'
    end
  end

  def members; end
end
