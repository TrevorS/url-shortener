class AddSaveCounterToLink < ActiveRecord::Migration
  def change
    add_column :links, :save_counter, :integer, default: 1
  end
end
