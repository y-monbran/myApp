class AddDetailsToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :explanation, :string, null: false
  end
end
