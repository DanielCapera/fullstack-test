class CreateCompanies < ActiveRecord::Migration[8.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :sector
      t.references :city, null: false, foreign_key: true
      t.string :phone
      t.string :address
      t.float :assets
      t.float :liabilities

      t.timestamps
    end
  end
end
