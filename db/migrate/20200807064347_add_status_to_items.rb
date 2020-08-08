class AddStatusToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :status, :integer, default: 1, null: false
    add_column :items, :count, :integer, default: 1, null: false
  end
end
