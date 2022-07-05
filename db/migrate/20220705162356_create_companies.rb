class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.references :user, null: false, foreign_key: true
      t.string :company_name
      t.string :company_country

      t.timestamps
    end
  end
end
