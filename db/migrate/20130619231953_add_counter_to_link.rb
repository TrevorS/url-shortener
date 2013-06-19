class AddCounterToLink < ActiveRecord::Migration
  def change
    add_column :links, :click_counter, :integer, default: 0
  end
end
