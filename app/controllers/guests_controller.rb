class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.create(name: params[:guest][:name], occupation: params[:guest][:occupation])
    redirect_to guest_path(@guest)
  end

  def show
    @guest = Guest.find(params[:id])
  end
end
