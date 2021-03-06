class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(id: "DESC")
    cheers = Cheer.where(user_id: @user.id).pluck(:post_id)
    @cheer_posts = Post.find(cheers)
  end

  def index
    @users = User.where(is_valid: true).page(params[:page]).reverse_order
  end

  def edit
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to edit_user_path(current_user)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "ユーザ情報を更新しました"
    else
      render :edit
    end
  end

  def leave_page
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end

  def leave
    @user = User.find(params[:id])
    @user.update(is_valid: false)
    reset_session
    redirect_to root_path, notice: "退会手続きが完了しました"
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction, :email)
  end
end
