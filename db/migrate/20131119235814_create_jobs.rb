class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :company_id
      t.string :title
      t.string :industry
      t.string :function
      t.integer :budget
      t.text :description
      t.string :location
      t.date :start_date
      t.date :end_date
      t.integer :hours_per_week
      t.boolean :status
    end
  end
end
