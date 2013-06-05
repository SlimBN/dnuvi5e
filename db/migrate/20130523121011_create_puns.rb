class CreatePuns < ActiveRecord::Migration
  def change
    create_table :puns do |t|
      t.string :title
      t.string :slug
      t.string :image
      t.string :link
      t.boolean :is_product
      t.integer :price
      t.integer :currency_id
      t.text :description
      t.integer :user_id
      t.integer :category_id
      t.integer :original_user_id
      t.integer :board_id
      t.integer :original_board_id
      t.integer :original_punaise_id
      t.boolean :is_deleted
      t.string :websource

      t.timestamps
    end
  end
end
