class LinksController < ApplicationController
  def	create

    base10idx = Link.last ? (Link.last.id+1) : 1
    digest = Shortener.base10to62(CONVERSION_IDX_OFFSET + base10idx)
    @link = Link.create(destination_url: params[:original_url], digest: digest)
    return render("home/index") unless @link.valid?
    @shortened_link = "#{request.base_url}/#{@link.digest}"
  end

end
