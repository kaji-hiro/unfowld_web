class MembersController < ApplicationController
  # before_action :basic_auth

  def new
    @member = Member.new
  end

  def create
    member = Member.new(member_params)
    if member.save
      flash.now[:success] = 'Member created!'
      redirect_to root_url
    else
      flash.now[:error] = 'error'
    end
  end

  private

    def member_params
      params.require(:member).permit(:member, :introduction, :order, :image, :position)
    end
end
