class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
  end

  def show
    @shoe = Shoe.find(params[:id])
  end

  def new
    # raise
    @shoe = Shoe.new
  end

  def create
    # raise
    # @shoe = current_user.shoes.build(shoes_params)
    @shoe = Shoe.new(shoe_params)
    @shoe.user = current_user
    if @shoe.save
      redirect_to shoes_path
    else
      render :new
    end
  end

  private

  def shoe_params
    params.require(:shoe).permit(:name, :description, :price)
  end
end
