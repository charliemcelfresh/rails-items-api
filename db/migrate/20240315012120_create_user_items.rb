class CreateUserItems < ActiveRecord::Migration[7.1]
  def change
    create_table :user_items do |t|
      t.references :user, foreign_key: true, index: { name: "idx_user_items_user_id" }
      t.references :item, foreign_key: true, index: { name: "idx_user_items_item_id"}
      t.timestamps
    end
  end
end
