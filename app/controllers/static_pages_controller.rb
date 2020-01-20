class StaticPagesController < ApplicationController
  include ApplicationHelper
  include SessionsHelper

  def home
    @article = current_user.articles.build if logged_in?
  end

  def about; end

  def contact; end

  def members; end

  def send_messege_to_slack
    if params[:message].present? && params[:email].present?
      notify_slack('email:' + params[:email] + "\n\n" + params[:message])
      flash[:success] = '送信が完了しました'
    else
      flash[:alert] = '正しく入力して下さい'
    end
    redirect_to action: 'contact'
  end
end
