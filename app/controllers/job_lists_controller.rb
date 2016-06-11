class JobListsController < ApplicationController
  def index
    @job_lists = JobList.all
  end

  def show
    @job_list = JobList.find(params[:id])
  end

  def new
    @job_list = JobList.new
  end

  def create
    @job_list = JobList.new
    @job_list.job_type_id = params[:job_type_id]
    @job_list.job_id = params[:job_id]

    if @job_list.save
      redirect_to "/job_lists", :notice => "Job list created successfully."
    else
      render 'new'
    end
  end

  def edit
    @job_list = JobList.find(params[:id])
  end

  def update
    @job_list = JobList.find(params[:id])

    @job_list.job_type_id = params[:job_type_id]
    @job_list.job_id = params[:job_id]

    if @job_list.save
      redirect_to "/job_lists", :notice => "Job list updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @job_list = JobList.find(params[:id])

    @job_list.destroy

    redirect_to "/job_lists", :notice => "Job list deleted."
  end
end
