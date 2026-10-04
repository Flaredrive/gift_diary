class Public::PostsController < ApplicationController
  allow_unauthenticated_access only: [:search, :index, :show]

  def search
  end

  def new
    @post = Post.new
  end

  def index
    @posts =Post.all
    
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
  end

  def create
    @post = Post.new(post_params)
    @post.category_tag_id = 1
    @post.user_id = Current.user.id
    if @post.save
      flash[:notice] = "投稿できました！続けてコメントしましょう！"
      redirect_to post_path(@post)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post)  
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:name, :image, :category_tag_id)
  end
end
