class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "ポストを投稿しました！"

    else
      render :new
    end
  end

  def show
  end


  def edit
  end

  def update

  end



  private

  def post_params
    params.require(:blog).permit(:content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
