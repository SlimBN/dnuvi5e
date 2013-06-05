class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.text :description
      t.string :slug
      t.integer :user_id
      t.integer :cover_id

      t.timestamps
    end
  end
end
