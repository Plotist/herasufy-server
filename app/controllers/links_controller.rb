class LinksController < ApplicationController
  def	create
    digest = Shortener.base10to62(CONVERSION_IDX_OFFSET + (Link.last&.id || 1))
    @link = Link.create(destination_url: params[:original_url], digest: digest)
    return render("home/index") unless @link.valid?
    @shortened_link = "#{request.base_url}/#{@link.digest}"
  end

end
