class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :avatar
      t.string :slug
      t.integer :country_id
      t.integer :state_id
      t.boolean :is_admin

      t.timestamps
    end
  end
end
