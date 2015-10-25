class AddStoreToUser < ActiveRecord::Migration
  def change
		add_column :users, :home_store_id, :integer
  end
end
