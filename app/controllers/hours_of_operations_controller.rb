class HoursOfOperationsController < ApplicationController
  before_action :authenticate_user, only: [:new, :edit, :update, :destroy]
  def authenticate_user
    if ( current_user.role != "Mechanic") && (current_user.role != "Admin")
      redirect_to "/", :alert => "You are not authorized"
    end
  end
  def index
    if current_user.role == "Mechanic"
    garage_id = Garage.find_by({:garage_code => current_user.garage_code_employee}).id
    @hours_of_operations = HoursOfOperation.where({ :garage_id => garage_id })
  else
    @hours_of_operations = HoursOfOperation.new
  end
  end

  def show
    @hours_of_operation = HoursOfOperation.find(params[:id])
  end

  def new
    @hours_of_operation = HoursOfOperation.new
  end

  def create
    @hours_of_operation = HoursOfOperation.new
    @hours_of_operation.garage_id = params[:garage_id]
    @hours_of_operation.close_time = params[:close_time]
    @hours_of_operation.open_time = params[:open_time]
    @hours_of_operation.day_of_the_week = params[:day_of_the_week]
    case @hours_of_operation.day_of_the_week
    when "Monday"
        time = Time.parse(Date.today.monday.to_s)
      when "Tuesday"
          time = Time.parse(Date.today.monday.to_s)+1.day
        when "Wednesday"
            time = Time.parse(Date.today.monday.to_s)+2.day
          when "Thursday"
              time = Time.parse(Date.today.monday.to_s)+3.day
            when "Friday"
                time = Time.parse(Date.today.monday.to_s)+4.day
              when "Saturday"
                  time = Time.parse(Date.today.monday.to_s)+5.day
                when "Sunday"
                    time = Time.parse(Date.today.monday.to_s)+6.day
                  end
    garage_id = current_user.garage.id
    mechanic_id = current_user.id
        for j in 0..4
        for i in @hours_of_operation.open_time..@hours_of_operation.close_time+11
        timeslot = Timeslot.new
        timeslot.timeslot = time+i.hour
        timeslot.garage_id = garage_id
        timeslot.mechanic_id = mechanic_id
        timeslot.save
        end
        time = time +7.day
      end


    if @hours_of_operation.save
      redirect_to "/hours_of_operations", :notice => "Hours of operation created successfully."
    else
      render 'new'
    end
  end

  def edit
    @hours_of_operation = HoursOfOperation.find(params[:id])
  end

  def update
    @hours_of_operation = HoursOfOperation.find(params[:id])

    @hours_of_operation.garage_id = params[:garage_id]
    @hours_of_operation.close_time = params[:close_time]
    @hours_of_operation.open_time = params[:open_time]
    @hours_of_operation.day_of_the_week = params[:day_of_the_week]

    if @hours_of_operation.save
      redirect_to "/hours_of_operations", :notice => "Hours of operation updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @hours_of_operation = HoursOfOperation.find(params[:id])

    @hours_of_operation.destroy

    redirect_to "/hours_of_operations", :notice => "Hours of operation deleted."
  end
end
