class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :position
      t.float :salary
      t.string :phone
      t.string :email
      t.string :password_digest
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
