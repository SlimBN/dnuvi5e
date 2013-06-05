class AddRemoteToPuns < ActiveRecord::Migration
  def change
    add_column :puns, :remote_image_url, :string
  end
end
