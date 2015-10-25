class AddDateToShift < ActiveRecord::Migration
  def change
		add_column :shifts, :shift_date, :date
  end
end
