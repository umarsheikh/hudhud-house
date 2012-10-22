class PagesController < ApplicationController
  def main
  end
  def portfolio
    @type = params[:id]
  end
  def mongo_rails_backbone_setup
    render :creating_mongo_and_backbone_app and return
  end
end
