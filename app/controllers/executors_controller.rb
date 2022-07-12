class ExecutorsController < ApplicationController
  def new
    @executor = Executor.new
  end

  def show
    # binding.pry
    @executor = Executor.find(params[:id])
  end

  def index
    @executors = Executor.all
  end

  def edit
    @executor = Executor.find(params[:id])
  end

  def update
    executor = Executor.find(params[:id])
    executor.update(executor_params)
    redirect_to executors_path
    # binding.pry
  end

  def create
    # binding.pry
    @executor = Executor.new(executor_params)

    if @executor.save
      # flash[:success] = 'Клиент создан успешно'
      redirect_to executors_path
    else
      # flash[:danger] = @client.errors.full_messages.join(', ')
      render :new
    end
  end

  def destroy
    executor = Executor.find(params[:id])
    executor.destroy
    redirect_to executors_path
  end

  private

  def executor_params
    params.require(:executor).permit(:name)
  end
end
