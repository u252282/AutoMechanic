class JobTypesController < ApplicationController
  def index
    @job_types = JobType.all
  end

  def show
    @job_type = JobType.find(params[:id])
  end

  def new
    @job_type = JobType.new
  end

  def create
    @job_type = JobType.new
    @job_type.repair_time_minutes = params[:repair_time_minutes]
    @job_type.description = params[:description]
    @job_type.name = params[:name]

    if @job_type.save
      redirect_to "/job_types", :notice => "Job type created successfully."
    else
      render 'new'
    end
  end

  def edit
    @job_type = JobType.find(params[:id])
  end

  def update
    @job_type = JobType.find(params[:id])

    @job_type.repair_time_minutes = params[:repair_time_minutes]
    @job_type.description = params[:description]
    @job_type.name = params[:name]

    if @job_type.save
      redirect_to "/job_types", :notice => "Job type updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @job_type = JobType.find(params[:id])

    @job_type.destroy

    redirect_to "/job_types", :notice => "Job type deleted."
  end
end
