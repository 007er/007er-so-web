class CommentsController < ApplicationController

	def create
		@link = Link.find(params[:link_id])
		@comment = @link.comments.create(comment_params)

		redirect_to link_path(@link)
	end

	def destroy
		@link = Link.find(params[:link_id])
		@comment = @link.comments.find(params[:id])
		@comment.destroy

		redirect_to link_path(@link)
	end

	private

	def comment_params
		params.require(:comment).permit(:body)
	end
end
