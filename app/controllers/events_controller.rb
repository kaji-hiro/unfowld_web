class EventsController < ApplicationController
  def index
    @events = Article.event.page(params[:page]).per(5)
  end

  def show
    @event = Article.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = '存在しないイベントです'
    redirect_to events_index_path
  end
end
