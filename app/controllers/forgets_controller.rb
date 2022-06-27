class ForgetsController < ApplicationController
  before_action :set_forget, only: [:show, :edit, :update, :destroy]

  def index
    @forgets = Forget.all.order("date DESC")
  end

  def new
    @forget = Forget.new
  end

  def create
    @forget = Forget.new(forget_params)
    if @forget.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private

  def forget_params
    params.require(:forget).permit(:date, :object, :place, :image).merge(user_id: current_user.id)
  end

  def set_forget
    @forget = Forget.find(params[:id])
  end
end
