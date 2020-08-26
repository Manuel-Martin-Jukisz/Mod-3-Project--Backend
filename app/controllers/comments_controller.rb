class CommentsController < ApplicationController

    def index
        @comments = Comment.all

        render json: @comments
    end

    def create
        @comment = Comment.create(content: params[:content], pokemon_id: params[:pokemon_id])

        render json: @comment
    end
end
