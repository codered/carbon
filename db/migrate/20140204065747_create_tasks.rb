class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.integer :duration
      t.integer :order
      t.float :progress
      t.string :status

      t.timestamps
    end
  end
end
