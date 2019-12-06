class StaticPagesController < ApplicationController
  include SessionsHelper

  def home
    @micropost = current_user.microposts.build if logged_in?
  end

  def about; end

  def contact; end

  def members; end
end
