class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      session[:listing] = @listing.id
      respond_to do |format|
        format.js
      end
    end
  end

  def media
    @listing = Listing.find(session[:listing])
    puts params
    @media = Media.new(file_name: params[:file], listing: @listing)
    if @media.save!
      respond_to do |format|
        format.json{ render :json => @media }
      end
    end
  end

  private
  def listing_params
    params.require(:listing).permit(:name)
  end
end
