class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :website
      t.string :city
      t.string :state
      t.integer :zip
      t.string :overview
    end
  end
end
