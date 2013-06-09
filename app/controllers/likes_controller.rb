class LikesController < ApplicationController
  before_filter :authenticate_user!, only: [:create, :destroy]
 
  def create
    @pun = Pun.find(params[:id])
    current_user.like!(@pun)
  end
 
  def destroy
    @pun = Pun.find(params[:id])
    current_user.unlike!(@pun)
  end
 
end