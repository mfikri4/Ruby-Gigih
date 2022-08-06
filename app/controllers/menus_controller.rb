class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end
  
  def dash
  end

  def new
    @menu = Menu.new
  end

  def create
    menu = Menu.create(menu_params)

    redirect_to menus_path
  end
   
  def edit
    @menu = Menu.find(params[:id])  
  end

  def update
    @menu = Menu.find(params[:id])
    @menu.update(menu_params)
    redirect_to menus_path
  end
  
  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy

    redirect_to menus_path
  end

  def menu_params
    params.require(:menu).permit(:name, :price, :category_id, :desc)
  end

end
