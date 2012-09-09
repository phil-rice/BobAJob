class CreateJobbers < ActiveRecord::Migration
  def change
    create_table :jobbers do |t|
      t.string :name
      t.string :email
      t.integer :organisation

      t.timestamps
    end
  end
end
