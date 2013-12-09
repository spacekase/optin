class PagesController < ApplicationController
  skip_before_action :someone_must_be_signed_in
  
  def landing
  end
end
