class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name

      t.timestamps
    end
  end
end
