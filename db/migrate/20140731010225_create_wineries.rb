class CreateWineries < ActiveRecord::Migration
  def change
    create_table :wineries do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :latitude
      t.string :longitude
      t.string :phone
      t.string :website
      t.string :twitter
      t.string :facebook

      t.timestamps
    end
  end
end
