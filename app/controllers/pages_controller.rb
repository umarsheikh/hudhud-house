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
    @blogs = blog_ids
    @blogs_with_titles = blog_names_and_ids
  end

  def blog
    id = params[:id]
    (render :template => "pages/#{id}" if (blog_ids+blog_names_and_ids.flatten).include?(params[:id])) and return
    
  end

end
