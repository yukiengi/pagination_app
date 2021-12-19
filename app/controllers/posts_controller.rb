class PostsController < ApplicationController
  PER_PAGE = 10

  def index
    @post = Post.new
    @posts = Post.order(created_at: :desc).page(params[:page]).per(PER_PAGE)
  end

  def create
    Post.create!(post_params)
    redirect_to action: :index
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
