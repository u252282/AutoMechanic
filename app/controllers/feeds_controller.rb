class FeedsController < ApplicationController
  def index
    @feeds = Feed.where(:job_id=>params[:job_id])
    @job_id = params[:job_id]
    @completed = Job.find(@job_id).completed
  end

  def show
    @feed = Feed.find(params[:id])
  end

  def new
    @feed = Feed.new
    @job_id = params[:job_id]
  end

  def create
    @feed = Feed.new
    @feed.job_id = params[:job_id]
    @feed.comment = params[:comment]

    if @feed.save
      redirect_to :controller => "feeds", :action =>"index", :job_id => @feed.job_id
    else
      render 'new'
    end
  end

  def edit
    @feed = Feed.find(params[:id])
  end

  def update
    @feed = Feed.find(params[:id])

    @feed.job_id = params[:job_id]
    @feed.comment = params[:comment]

    if @feed.save
      redirect_to "/feeds", :notice => "Feed updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @feed = Feed.find(params[:id])
    job_id = params[:job_id]
    @feed.destroy

  redirect_to :controller => "feeds", :action =>"index", :job_id => job_id
  end
end
