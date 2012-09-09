class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :punter
      t.integer :jobber
      t.date :time
      t.string :description

      t.timestamps
    end
  end
end
