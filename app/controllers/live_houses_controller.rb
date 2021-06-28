class LiveHousesController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    @live_houses = LiveHouse.all
  end

  def show
    @live_house = LiveHouse.find(params[:id])
    @review = Review.new
  end

  def search
   #Viewのformで取得したパラメータをモデルに渡す
   @live_houses = LiveHouse.search(params[:search])
 end

end
