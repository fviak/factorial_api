class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false, index: { unique: true }
      t.text   :password_digest, null: false
      t.string :phone, null: false, index: { unique: true }

      t.timestamps
    end
  end
end