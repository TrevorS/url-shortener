class AddingSchemeIdToLink < ActiveRecord::Migration
  def change
    add_column :links, :scheme_id, :integer
  end
end
