class VehiclesController < ApplicationController
  def index
@vehicles = Vehicle.where(:customer_id => current_user.id)
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new
    @vehicle.customer_id = params[:customer_id]
    @vehicle.notes = params[:notes]
    @vehicle.color = params[:color]
    @vehicle.mileage = params[:mileage]
    @vehicle.year = params[:year]
    @vehicle.model = params[:model]
    @vehicle.make = params[:make]

    if @vehicle.save
      redirect_to "/vehicles", :notice => "Vehicle created successfully."
    else
      render 'new'
    end
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])

    @vehicle.customer_id = params[:customer_id]
    @vehicle.notes = params[:notes]
    @vehicle.color = params[:color]
    @vehicle.mileage = params[:mileage]
    @vehicle.year = params[:year]
    @vehicle.model = params[:model]
    @vehicle.make = params[:make]

    if @vehicle.save
      redirect_to "/vehicles", :notice => "Vehicle updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])

    @vehicle.destroy

    redirect_to "/vehicles", :notice => "Vehicle deleted."
  end
end
