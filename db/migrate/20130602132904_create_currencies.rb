class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :symbol
      t.boolean :is_enabled

      t.timestamps
    end
  end
end
