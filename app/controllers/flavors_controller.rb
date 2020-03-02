class FlavorsController < ApplicationController
  before_action :authenticate_user!
  def index
    @flavors = Flavor.where(id:1..25).order(id: "ASC").page(params[:page]).per(10)
    @StatusImage = ["", "urn_red.png", "urn_yellow.png", "urn_blue.png"]
  end
  def new
    @flavor = Flavor.new
  end
  def edit
    @flavor = Flavor.find(params[:id])
  end
  def update
    @flavor = Flavor.find(params[:id])
    @flavor.update(flavor_params)
    redirect_to flavors_path
  end
  
  private
  def flavor_params
    params.require(:flavor).permit(:name, :purchase_price, :status, :summit_price, :image).merge(user_id: current_user.id)
  end
end
