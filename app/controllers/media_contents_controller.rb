class MediaContentsController < ApplicationController
 
  def index
    @media_contents = Media.all
  end

 def create
    @media = Media.new(file_name: params[:file])
    if @media.save!
      respond_to do |format|
        format.json{ render :json => @media }
      end
    end
  end

def delete_media
  Media.where(id: params[:media_contents]).destroy_all
  redirect_to root_url
end

end
