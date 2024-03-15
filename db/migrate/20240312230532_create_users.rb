class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { name: :idx_users_email, unique: true }
      t.timestamps
    end
  end
end
