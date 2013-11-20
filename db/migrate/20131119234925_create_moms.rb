class CreateMoms < ActiveRecord::Migration
  def change
    create_table :moms do |t|
      t.string :first_name
      t.string :last_name
      t.integer :years_experience
      t.string :email
      t.string :college
      t.string :mba
    end
  end
end
