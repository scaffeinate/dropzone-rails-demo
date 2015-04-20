class AddListingReferenceToMedia < ActiveRecord::Migration
  def change
    add_reference :media, :listing, index: true
  end
end
