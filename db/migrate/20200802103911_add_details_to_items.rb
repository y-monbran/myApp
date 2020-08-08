class AddDetailsToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :explanation, :string
  end
end
