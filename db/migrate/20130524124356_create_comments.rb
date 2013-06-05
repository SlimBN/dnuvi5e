class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :pun_id
      t.boolean :approved

      t.timestamps
    end
  end
end
