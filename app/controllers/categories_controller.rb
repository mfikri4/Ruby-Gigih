class CategoriesController < ApplicationController
  def index
    @categorys = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.create(item_params)

    redirect_to categories_path
  end
    
  def edit
    @category = Category.find(params[:id])  
  end

  def update
    @category = Category.find(params[:id])
    @category.update(item_params)
    redirect_to categories_path
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to categories_path
  end

  def item_params
    params.require(:category).permit(:name)
  end
end
