class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
  end

  def show
    @shoe = Shoe.find(params[:id])
  end

  def new
    
  end

  def nike
    @shoes = Shoe.where(name: "nike")
  end

  def adidas
    @shoes = Shoe.where(name: "adidas")
  end

  def reebok
    @shoes = Shoe.where(name: "reebok")
  end

  def newbalance
    @shoes = Shoe.where(name: "newbalance")
  end
end
