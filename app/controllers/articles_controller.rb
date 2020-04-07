class ArticlesController < ApplicationController
  include SessionsHelper
  before_action :logged_in_user, only: %i[create destroy]

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      flash.now[:success] = 'Article created!'
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy; end

  private

    def article_params
      render 'static_pages/home' if params[:article][:content].blank?
      params.require(:article).permit(:title, :content, :thumbnail, :article_type)
    end

    def logged_in_user
      return if logged_in?

      flash[:danger] = 'Please log in.'
      redirect_to login_url
    end
end
