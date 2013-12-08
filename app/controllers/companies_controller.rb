class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find_by(id: params[:id])
  end

  def new
  end

  def create
    @company = Company.new
    @company.name = params[:name]
    @company.email = params[:email]
    @company.website = params[:website]
    @company.city = params[:city]
    @company.state = params[:state]
    @company.zip = params[:zip]
    @company.overview = params[:overview]

    if @company.save
      redirect_to companies_url, notice: "Company created successfully."
    else
      render 'new'
    end
  end

  def edit
    @company = Company.find_by(id: params[:id])
  end

  def update
    @company = Company.find_by(id: params[:id])
    @company.name = params[:name]
    @company.email = params[:email]
    @company.website = params[:website]
    @company.city = params[:city]
    @company.state = params[:state]
    @company.zip = params[:zip]
    @company.overview = params[:overview]

    if @company.save
      redirect_to companies_url, notice: "Company updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @company = Company.find_by(id: params[:id])
    @company.destroy

    redirect_to companies_url, notice: "Company deleted."
  end

def us_states

  [
    ['AK', 'AK'],
    ['AL', 'AL'],
    ['AR', 'AR'],
    ['AZ', 'AZ'],
    ['CA', 'CA'],
    ['CO', 'CO'],
    ['CT', 'CT'],
    ['DC', 'DC'],
    ['DE', 'DE'],
    ['FL', 'FL'],
    ['GA', 'GA'],
    ['HI', 'HI'],
    ['IA', 'IA'],
    ['ID', 'ID'],
    ['IL', 'IL'],
    ['IN', 'IN'],
    ['KS', 'KS'],
    ['KY', 'KY'],
    ['LA', 'LA'],
    ['MA', 'MA'],
    ['MD', 'MD'],
    ['ME', 'ME'],
    ['MI', 'MI'],
    ['MN', 'MN'],
    ['MO', 'MO'],
    ['MS', 'MS'],
    ['MT', 'MT'],
    ['NC', 'NC'],
    ['ND', 'ND'],
    ['NE', 'NE'],
    ['NH', 'NH'],
    ['NJ', 'NJ'],
    ['NM', 'NM'],
    ['NV', 'NV'],
    ['NY', 'NY'],
    ['OH', 'OH'],
    ['OK', 'OK'],
    ['OR', 'OR'],
    ['PA', 'PA'],
    ['RI', 'RI'],
    ['SC', 'SC'],
    ['SD', 'SD'],
    ['TN', 'TN'],
    ['TX', 'TX'],
    ['UT', 'UT'],
    ['VA', 'VA'],
    ['VT', 'VT'],
    ['WA', 'WA'],
    ['WI', 'WI'],
    ['WV', 'WV'],
    ['WY', 'WY']
  ]
end


end
