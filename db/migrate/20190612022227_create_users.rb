class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address
      t.string :password_digest
      t.string :remember_digest
      t.integer :role, null: false, default: 1


      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
