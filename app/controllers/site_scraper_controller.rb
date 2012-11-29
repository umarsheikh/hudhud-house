class SiteScraperController < ApplicationController
  def index
    url = params[:id]
    @session ||= Patron::Session.new
    page_source = @session.get(url)
    render text: page_source.body
  end
end
