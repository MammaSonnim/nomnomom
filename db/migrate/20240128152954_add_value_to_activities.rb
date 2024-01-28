class AddValueToActivities < ActiveRecord::Migration[7.1]
  def change
    add_column :activities, :value, :integer
  end
end
