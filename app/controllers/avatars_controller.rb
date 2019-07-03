class AvatarsController < ApplicationController
  def index
    @avatars = Avatar.all
  end

  def show
    @avatar = Avatar.find(params[:id])
  end

  def new
    @avatar = Avatar.new
  end

  def create
    @avatar = Avatar.new(avatar_params)
    @avatar.victories = 0
    if @avatar.save
      redirect_to avatar_path(@avatar)
    else
      render :new
    end
  end

  def edit
    @avatar = Avatar.find(params[:id])
  end

  def update
    @avatar = Avatar.find(params[:id])
    @avatar.update(avatar_params)
    redirect_to avatars_path
  end

  def destroy
    @avatar = Avatar.find(params[:id])
    @avatar.destroy
    redirect_to avatars_path
  end


  private

  def avatar_params
    params.require(:avatar).permit(:name, :photo, :lives, :attacks)
  end
end
