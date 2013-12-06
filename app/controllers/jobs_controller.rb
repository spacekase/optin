class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find_by(id: params[:id])
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
    @job = Job.find_by(id: params[:id])
  end

  def update
    @job = Job.find_by(id: params[:id])
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
    @job = Job.find_by(id: params[:id])
    @job.destroy

    redirect_to jobs_url, notice: "Job deleted."

    
  end
end
