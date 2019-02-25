class PostsController < ApplicationController

    def index
        @posts = Post.all.order(created_at: :desc)
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        Post.create(title: params[:title], body: params[:body])
    end
end
