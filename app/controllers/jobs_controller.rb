class JobsController < ApplicationController
  def index
    if current_user.role == "Customer"
      @Vehicles = Vehicle.where(:customer_id=>current_user.id)
      @vehicled_ids = []
      @Vehicles.each do |vehicle|
        @vehicled_ids << vehicle.id
      end
      @jobs=Job.where(:vehicle_id => @vehicled_ids)
    else
      @mechanic_jobs = []
      Timeslot.where(:mechanic_id => current_user.id).where.not(:job_id=>nil).each do |timeslot|
        @mechanic_jobs << timeslot.job_id
      end
      @jobs = Job.where(:id =>@mechanic_jobs)
    end
  end
  def start
    @job_id = Job.find(params[:id]).id
    @job = Job.find(@job_id)
    @job.started = true
    @job.save
    @feed = Feed.new
    @feed.job_id = @job_id
    @feed.comment = "Job started"
    if @feed.save
      redirect_to :controller => "feeds", :action =>"index", :job_id => @job_id
    else
      render 'index'
    end

  end
  def complete
    @job_id = Job.find(params[:id]).id
    @job = Job.find(@job_id)
    @job.completed = true
    @job.save
    @feed = Feed.new
    @feed.job_id = @job_id
    @feed.comment = "Job completed and vehicle ready for pickup"
    if @feed.save
      redirect_to :controller => "feeds", :action =>"index", :job_id => @job_id
    else
      render 'index'
    end

  end
  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
    @vehicles = Vehicle.where({ :customer_id => current_user.id })
    @job_types = JobType.all
  end

  def create
    @job = Job.new
    @vehicle_id = params[:job][:vehicle_id]
    @job_types = params[:job_types]
    @total_repair_time = 0
    @job_types.each do |job_type|
      @total_repair_time = @total_repair_time+JobType.find_by({:id => job_type}).repair_time_minutes
    end
    #if @job.save
    #  redirect_to "/jobs", :notice => "Job created successfully."
    #else
    redirect_to :controller =>"jobs", :action => "book", :vehicle_id => @vehicle_id, :total_repair_time => @total_repair_time, :job_types=> @job_types
    #end
  end

  def book

    @timeslot = Timeslot.new
    @vehicle_id = params[:vehicle_id]
    @job_types = params[:job_types]
    @total_repair_time = params[:total_repair_time]
    @timeslots_available = Timeslot.where(:garage_id=> current_user.garage_id).where("timeslot > ?",Time.now).where(:job_id=>nil).limit(5)
  end

  def booking
    @job = Job.new
    @job.vehicle_id = params[:vehicle_id]
    @job.save
    @job_types = params[:job_types]
    JSON.parse(@job_types).each do |job_type|
      print job_type
      @job_list = JobList.new
      @job_list.job_id = @job.id
      @job_list.job_type_id = job_type.to_i
      @job_list.save
    end
    @timeslot = Timeslot.find(params[:timeslot][:id])
    @timeslot.job_id = @job.id
    if @timeslot.save
      redirect_to "/jobs", :notice => "Job created successfully."
    else
      render 'new'
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])

    @job.completed = params[:completed]
    @job.started = params[:started]
    @job.vehicle_id = params[:vehicle_id]

    if @job.save
      redirect_to "/jobs", :notice => "Job updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @job = Job.find(params[:id])

    @job.destroy

    redirect_to "/jobs", :notice => "Job deleted."
  end
end
