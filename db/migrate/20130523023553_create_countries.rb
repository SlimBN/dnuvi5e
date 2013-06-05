class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :slug
      t.string :flag
      t.integer :continent_id

      t.timestamps
    end
  end
end
