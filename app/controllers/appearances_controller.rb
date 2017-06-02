class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      redirect_to @appearance.episode
    else
      redirect_to new_appearance_path
    end
  end

  def edit
    @appearance = Appearance.find(params[:id])
  end

  def update
    @appearance = Appearance.find(params[:id])
    if @appearance.update(appearance_params)
      redirect_to @appearance.episode
    else
      redirect_to new_appearance_path
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
