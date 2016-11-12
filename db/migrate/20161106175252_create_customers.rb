class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :username, null: false
      t.string :address_1, null: true
      t.string :address_2, null: true
      t.string :city, null: true
      t.string :state, null: true
      t.string :postal_code, null: true
      t.string :country, null: true

      t.timestamps null: false
    end

    add_index :customers, :email, unique: true
    add_index :customers, :username, unique: true
  end
end
