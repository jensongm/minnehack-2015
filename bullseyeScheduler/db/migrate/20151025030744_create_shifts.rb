class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.time :start
      t.time :end
      t.integer :total
			t.integer :user_id
      t.timestamps null: false
    end
  end
end
