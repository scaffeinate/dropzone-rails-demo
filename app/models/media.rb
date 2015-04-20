class Media < ActiveRecord::Base
  belongs_to :listing
  mount_uploader :file_name, MediaUploader
end
