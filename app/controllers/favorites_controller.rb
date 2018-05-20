class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    user = User.find(params[:like_id])
    current_user.like(user)
    flash[:success] = '投稿をお気に入りしました。'
    redirect_to user
  end
   

  def destroy
    user = User.find(params[:like_id])
    current_user.unlike(user)
    flash[:success] = '投稿のお気に入りを解除しました。'
    redirect_to user

  end
end
