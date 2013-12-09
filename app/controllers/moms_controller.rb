class MomsController < ApplicationController

before_action(:authenticate_mom!, :only => [:new, :edit, :update, :destroy])

  before_action :someone_must_be_signed_in, :only => [:index]

  def someone_must_be_signed_in
      unless mom_signed_in? || company_signed_in?
        redirect_to root_url, :notice => "You must be signed in to view moms."
      end
  end

  def index
    @moms = Mom.all
  end

  def show
    @mom = Mom.find_by(id: params[:id])
  end

  def new
  end

  def create
    @mom = Mom.new
    @mom.first_name = params[:first_name]
    @mom.last_name = params[:last_name]
    @mom.years_experience = params[:years_experience]
    @mom.email = params[:email]
    @mom.college = params[:college]
    @mom.mba = params[:mba]

    if @mom.save
      redirect_to moms_url, notice: "Mom created successfully."
    else
      render 'new'
    end
  end

  def edit
    @mom = Mom.find_by(id: params[:id])
  end

  def update
    @mom = Mom.find_by(id: params[:id])
    @mom.first_name = params[:first_name]
    @mom.last_name = params[:last_name]
    @mom.years_experience = params[:years_experience]
    @mom.email = params[:email]
    @mom.college = params[:college]
    @mom.mba = params[:mba]

    if @mom.save
      redirect_to moms_url, notice: "Mom updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @mom = Mom.find_by(id: params[:id])
    @mom.destroy

    redirect_to moms_url, notice: "Mom deleted."
  end
end
