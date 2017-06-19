class CommentsController < ApplicationController
    def create
        @regi = Regi.find(params[:regi_id])
        @comment = @regi.comments.create(comment_params)
        redirect_to regi_path(@regi)
    end
    
    def destroy
        @regi = Regi.find(params[:regi_id])
        @comment = @regi.comments.find(params[:id])
        @comment.destroy
        redirect_to regi_path(@regi)
    end
    
    private
      def comment_params
          params.require(:comment).permit(:commenter, :body)
      end
end
