class PagesController < ApplicationController
  def main
  end
  def portfolio
    @type = params[:id]
  end
end
