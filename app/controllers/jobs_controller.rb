class JobsController < ApplicationController

  before_action(:find_job, :only => [:show, :edit, :update, :destroy])
  before_action(:authenticate_company!, :only => [:new, :edit, :update, :destroy])

  before_action :someone_must_be_signed_in, :only => [:index]

  def someone_must_be_signed_in
      unless mom_signed_in? || company_signed_in?
        redirect_to root_url, :notice => "You must be signed in to view jobs."
      end
  end

  def find_job
    @job = Job.find(params[:id])
  end

  def index
    @jobs = Job.all

    #@jobs = current_company.jobs
    
    # if company_signed_in?
    #   @jobs = current_company.jobs
    # else
    #   @jobs = Jobs.all
    
    end
  
  def show
    find_job
  end

  def new
  end

  def create
    @job = Job.new
    @job.title = params[:title]
    @job.industry = params[:industry]
    @job.function = params[:function]
    @job.budget = params[:budget]
    @job.description = params[:description]
    @job.location = params[:location]
    @job.start_date = params[:start_date]
    @job.end_date = params[:end_date]
    @job.hours_per_week = params[:hours_per_week]
    @job.status = params[:status]
    @job.company_id = current_company.id

    if @job.save
      redirect_to jobs_url, notice: "Job created successfully."
    else
      render 'new'
    end
  end

  def edit
    find_job
  end

  def update
    find_job
    @job.company_id = params[:company_id]
    @job.title = params[:title]
    @job.industry = params[:industry]
    @job.function = params[:function]
    @job.budget = params[:budget]
    @job.description = params[:description]
    @job.location = params[:location]
    @job.start_date = params[:start_date]
    @job.end_date = params[:end_date]
    @job.hours_per_week = params[:hours_per_week]
    @job.status = params[:status]
    @job.company_id = current_company.id

    if @job.save
      redirect_to jobs_url, notice: "Job updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    find_job
    @job.destroy

    redirect_to jobs_url, notice: "Job deleted."

    
  end
end
