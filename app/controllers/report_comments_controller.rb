class ReportCommentsController < ApplicationController
  def create
    @report_comment = ReportComment.new(report_comment_params)
    @post = Post.find(params[:post_id])
    if @report_comment.save
      ReportCommentChannel.broadcast_to @post, {report_comment: @report_comment, user: @report_comment.user}
    end
  end

  private

  def report_comment_params
    params.require(:report_comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
