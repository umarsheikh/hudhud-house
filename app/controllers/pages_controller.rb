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

  def get_listing
    @blogs = blog_ids
  end

  def blog
    id = params[:id]
    (render :template => "pages/#{id}" if blog_ids.include?(params[:id])) and return
  end

end
