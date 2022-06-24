class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :user_if, only: [:edit, :destroy]

  def index
    @posts = Post.all.order("date DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @report_comments = @post.report_comments.includes(:user)
    @report_comment = ReportComment.new
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to root_path
    else
      render :edit
    end
  end
  

  private

  def post_params
    params.require(:post).permit(:date, :program, :information, :feedback).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def user_if
    if @post.user_id != current_user.id
      redirect_to root_path
    end
  end 
end
