class HomeController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def index
  end

  def handle_digest
    @link = Link.find(Shortener.base62to10(params[:digest])-CONVERSION_IDX_OFFSET)
    redirect_to @link.destination_url, allow_other_host: true
  end

  private
  def not_found
    render "errors/not_found", layout: false
  end
end