class CartsController < ApplicationController
  def index
    @carts = Cart.all
  end

  def new
    @cart = Cart.new
  end

  def create
    cart = Cart.create(cart_params)

    redirect_to carts_path
  end
    
  def edit
    @cart = Cart.find(params[:id])  
  end

  def update
    @cart = Cart.find(params[:id])
    @cart.update(cart_params)
    redirect_to carts_path
  end
  
  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy

    redirect_to carts_path
  end

  def cart_params
    params.require(:cart).permit(:name, :price, :qty)
  end
end
