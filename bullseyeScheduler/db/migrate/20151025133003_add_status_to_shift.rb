class AddStatusToShift < ActiveRecord::Migration
  def change
		add_column :shifts, :current_status, :string
  end
end
