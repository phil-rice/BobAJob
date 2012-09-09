class CreatePunters < ActiveRecord::Migration
  def change
    create_table :punters do |t|
      t.string :name
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
