class HomeController < ApplicationController
  def index
  end

  def handle_digest
    @link = Link.find(Shortener.base62to10(params[:digest])-CONVERSION_IDX_OFFSET)
    if
      redirect_to @link.destination_url, allow_other_host: true
    else
      render :link_not_found
    end
  end
end