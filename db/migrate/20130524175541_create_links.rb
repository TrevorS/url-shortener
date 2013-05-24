class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :user_url
      t.string :short_url
      t.string :ip

      t.timestamps
    end
  end
end
