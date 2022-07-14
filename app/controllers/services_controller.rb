class ServicesController < ApplicationController
  def new
    @service = Service.new
  end

  def show
    # binding.pry
    @service = Service.find(params[:id])
  end

  def index
    @services = Service.all
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    service = Service.find(params[:id])
    service.update(service_params)
    redirect_to services_path
    # binding.pry
  end

  def create
    # binding.pry
    @service = Service.new(service_params)

    if @service.save
      # flash[:success] = 'Клиент создан успешно'
      redirect_to services_path
    else
      # flash[:danger] = @client.errors.full_messages.join(', ')
      render :new
    end
  end

  def destroy
    service = Service.find(params[:id])
    service.destroy
    redirect_to services_path
  end

  private

  def service_params
    params.require(:service).permit(:name, executor_ids: [])
  end
end
