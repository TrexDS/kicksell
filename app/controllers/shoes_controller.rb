class ShoesController < ApplicationController
  before_action :shoe_list, only: [:show, :edit]
  def index
    # raise
    @shoes = Shoe.all
  end

  def show
    # @shoe = Shoe.find(params[:id])
    @user = User.where(id: @shoe.user_id)
    # raise
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

    def edit
      raise
    end

    def update
      raise
      @shoe = Shoe.find(params[:id])
      @shoe.update(shoe_params)
      redirect_to shoe_path(@shoe)
    end

  end

  private

  def shoe_params
    params.require(:shoe).permit(:name, :description, :price)
  end

  def shoe_list
    @shoe = Shoe.find(params[:id])
  end
end
