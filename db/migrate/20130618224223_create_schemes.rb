class CreateSchemes < ActiveRecord::Migration
  def change
    create_table :schemes do |t|
      t.string :name

      t.timestamps
    end
  end
end
