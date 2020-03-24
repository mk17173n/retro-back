class ContentsController < ApplicationController

    def index
        contents = Content.all.sort
        render json: contents
    end

    def destroy
        content =Content.find_by(id:params[:id])
        content.destroy
        render json: content
    end


end
