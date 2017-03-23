class AppearancesController < ApplicationController

  def new
    @guest = Guest.find(params[:guest_id])
    @appearance = Appearance.new
  end

  def create
    @guest = Guest.find(params[:guest_id])
    @appearance = Appearance.create(guest_id: params[:guest_id], episode_id: params[:appearance][:episode_id], rating: params[:appearance][:rating])
    redirect_to guest_path(@guest)
  end
end
