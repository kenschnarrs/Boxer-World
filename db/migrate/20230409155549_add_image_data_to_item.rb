class AddImageDataToItem < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :image_data, :binary
  end
end
