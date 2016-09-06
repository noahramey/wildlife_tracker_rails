class CreateSightings < ActiveRecord::Migration[5.0]
  def change
    create_table :sightings do |t|
      t.column :date, :date
      t.column :latitude, :string
      t.column :longitude, :string
      t.column :species_id, :integer

      t.timestamps
    end
  end
end
