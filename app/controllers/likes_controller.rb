class LikesController < ApplicationController
    before_action :authorized

    def index
        likes = Like.all.sort
        render json: likes
    end

    def create
         
        # if already_liked?
        #     givenLike = Like.find_by(user_id: params[:id], content_id: params[:content_id])
        #     # flash[:notice] = "Sorry, can't like more than once!"
        #     render json: {likeID: givenLike.id, liked: true}
            
        #   else
            @content = Content.find(params[:id])
            Like.create(content_id: params[:content_id], user_id: params[:id])
            # byebug
            render json: {content: ContentSerializer.new(@content), token: @token}, status: :created
        # end
    end

    # def destroy
    #     # byebug
    #     @like = Like.find_by(user_id: params[:id])
    #     if(@like)
    #         @like.destroy
    #         render json: @like.id
    #     else
    #         render json: {liked: false}
    #     end
    # end

    private

    # def already_liked?
    #     Like.where(user_id: params[:id], content_id: params[:content_id]).exists?
    # end

    
end
