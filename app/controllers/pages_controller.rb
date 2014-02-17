class PagesController < ApplicationController
  include PagesHelper
  def main
  end
  def portfolio
    @type = params[:id]
  end
  def mongo_rails_backbone_setup
    render :creating_mongo_and_backbone_app and return
  end
  def file_upload_with_carrier_wave_and_fog
    render :file_upload_with_carrier_wave_and_fog and return
  end

  def get_listing
  end

  def blog
    id = params[:id]
    (render :template => "pages/#{id}" if (all_blogs.values.flatten).include?(params[:id])) and return
  end
  def aboutus
  end

end
