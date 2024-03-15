class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name, null: false, index: { name: :idx_items_name, unique: :true }
      t.timestamps
    end
  end
end
