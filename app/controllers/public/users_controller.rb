class Public::UsersController < ApplicationController
  allow_unauthenticated_access only: [:new, :create]

  def mypage
    @user = Current.user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      start_new_session_for @user
      flash[:notice] = "Welcome! You have signed up successfully."
      redirect_to posts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user)  
  end

  def destroy
  end

  private
 
  def user_params
    params.require(:user).permit(:name, :image, :email_address, :password, :password_confirmation)
  end

end
