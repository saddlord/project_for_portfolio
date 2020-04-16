class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.integer :duration
      t.text :description
      t.datetime :start_date
      t.integer :price
      t.string :location
      t.references :admin, index: true
      t.timestamps
    end
  end
end
