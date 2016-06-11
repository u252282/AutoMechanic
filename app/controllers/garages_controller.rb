class GaragesController < ApplicationController
  def index
    @garages = Garage.all
  end

  def show
    @garage = Garage.find(params[:id])
  end

  def new
    @garage = Garage.new
  end

  def create
    @garage = Garage.new
    @garage.zipcode = params[:zipcode]
    @garage.state = params[:state]
    @garage.city = params[:city]
    @garage.address_line_2 = params[:address_line_2]
    @garage.garage_code = params[:garage_code]
    @garage.phone_number = params[:phone_number]
    @garage.address_line_1 = params[:address_line_1]
    @garage.name = params[:name]

    if @garage.save
      redirect_to "/garages", :notice => "Garage created successfully."
    else
      render 'new'
    end
  end

  def edit
    @garage = Garage.find(params[:id])
  end

  def update
    @garage = Garage.find(params[:id])

    @garage.zipcode = params[:zipcode]
    @garage.state = params[:state]
    @garage.city = params[:city]
    @garage.address_line_2 = params[:address_line_2]
    @garage.garage_code = params[:garage_code]
    @garage.phone_number = params[:phone_number]
    @garage.address_line_1 = params[:address_line_1]
    @garage.name = params[:name]

    if @garage.save
      redirect_to "/garages", :notice => "Garage updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @garage = Garage.find(params[:id])

    @garage.destroy

    redirect_to "/garages", :notice => "Garage deleted."
  end
end
