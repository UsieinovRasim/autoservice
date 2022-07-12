class OrdersController < ApplicationController
  def new
    # binding.pry
    @order = Order.new
  end

  def index
    # binding.pry
    @orders = Order.all
  end

  def show
    # binding.pry
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.find(params[:id])
  end

  def create
    # binding.pry
    @order = Order.new(order_params)

    if @order.save
      # flash[:success] = 'Клиент создан успешно'
      redirect_to orders_path
    else
      # flash[:danger] = @client.errors.full_messages.join(', ')
      render :new
    end
  end

  def update
    order = Order.find(params[:id])
    order.update(order_params)
    redirect_to orders_path
    # binding.pry
  end

  def destroy
    order = Order.find(params[:id])
    order.destroy
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(:client)
  end
end
