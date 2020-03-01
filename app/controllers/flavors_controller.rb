class FlavorsController < ApplicationController
    def index
      @flavors = Flavor.where(id:1..25).order(id: "ASC").page(params[:page]).per(10)
      @StatusImage = ["", "urn_red.png", "urn_yellow.png", "urn_blue.png"]
    end
    
    def edit
    end
end
