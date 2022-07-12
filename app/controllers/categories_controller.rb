class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def show
    # binding.pry
    @category = Category.find(params[:id])
  end

  def index
    @categories = Category.all
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    category = Category.find(params[:id])
    category.update(category_params)
    redirect_to categories_path
    # binding.pry
  end

  def create
    # binding.pry
    @category = Category.new(category_params)

    if @category.save
      # flash[:success] = 'Клиент создан успешно'
      redirect_to categories_path
    else
      # flash[:danger] = @client.errors.full_messages.join(', ')
      render :new
    end
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
