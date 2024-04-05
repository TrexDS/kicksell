class OrdersController < ApplicationController
  before_action :order_list, only: [:show, :edit, :update]
  def index
    @orders = Order.all
    @shoe = Shoe.find(params[:shoe_id])
  end

  def show
    # raise
    @shoe = Shoe.find(params[:shoe_id])
  end

  def new
    @order = Order.new
    @shoe = Shoe.find(params[:shoe_id])
  end

  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @shoe = Shoe.find(params[:shoe_id])
    @order.shoe_id = @shoe.id
    if @order.save
      redirect_to shoe_orders_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @order.update(order_params)
    redirect_to shoe_order_path(@order)
  end

  private

  def order_params
    params.require(:order).permit()
  end

  def order_list
    @order = Order.find(params[:id])
  end
end
