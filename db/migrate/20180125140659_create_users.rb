class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :photo
      t.references :driver_admin_id
      t.string :role

      t.timestamps
    end
  end
end
