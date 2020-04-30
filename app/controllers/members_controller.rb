class MembersController < ApplicationController
  # before_action :basic_auth

  def new
    @member = Member.new
  end

  def create
    member = Member.new(member_params)
    if member.save
      flash.now[:success] = 'Member created!'
      redirect_to new_member_path
    else
      flash.now[:error] = 'error'
      render :new
    end
  end

  def index
    @members = if params[:search]
                 Member.where('name like ?', "%#{params[:search][:name]}%")
               else
                 Member.all
               end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    member = Member.find(params[:id])
    if member.update(member_params)
      flash.now[:success] = 'Member created!'
      redirect_to members_path
    else
      flash.now[:error] = 'error'
      render :edit
    end
  end

  private

    def member_params
      params.require(:member).permit(:name, :introduction, :order, :position, :image, :instagram)
    end
end
