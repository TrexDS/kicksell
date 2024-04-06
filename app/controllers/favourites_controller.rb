class FavouritesController < ApplicationController

  def new
    @favourite = Favourite.new
    @shoe = Shoe.find(params[:shoe_id])
  end

  def create
    # raise
    @favourite = Favourite.new(favourite_params)
    if @favourite.save
      redirect_to favourites_path
    end
  end

  private

  def favourite_params
    params.require(:favourite).permit(:user_id, :shoe_id)
  end
end
