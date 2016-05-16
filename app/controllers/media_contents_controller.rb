class MediaContentsController < ApplicationController

  def index
    @media_contents = Media.all
  end

 def create
    @media = Media.new(file_name: params[:file])
    if @media.save!
      render json: @media
    else
      puts 'Hello'
      render json: { error: 'Failed to process' }, status: 422
    end
  end

def delete_media
  Media.where(id: params[:media_contents]).destroy_all
  redirect_to root_url
end

def delete_all
  Media.delete_all
  redirect_to root_url
end

end
