class TimeslotsController < ApplicationController
  def index
    @timeslots = Timeslot.all
  end

  def show
    @timeslot = Timeslot.find(params[:id])
  end

  def new
    @timeslot = Timeslot.new
  end

  def create
    @timeslot = Timeslot.new
    @timeslot.job_id = params[:job_id]
    @timeslot.mechanic_id = params[:mechanic_id]
    @timeslot.timeslot = params[:timeslot]

    if @timeslot.save
      redirect_to "/timeslots", :notice => "Timeslot created successfully."
    else
      render 'new'
    end
  end

  def edit
    @timeslot = Timeslot.find(params[:id])
  end

  def update
    @timeslot = Timeslot.find(params[:id])

    @timeslot.job_id = params[:job_id]
    @timeslot.mechanic_id = params[:mechanic_id]
    @timeslot.timeslot = params[:timeslot]

    if @timeslot.save
      redirect_to "/timeslots", :notice => "Timeslot updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @timeslot = Timeslot.find(params[:id])

    @timeslot.destroy

    redirect_to "/timeslots", :notice => "Timeslot deleted."
  end
end
