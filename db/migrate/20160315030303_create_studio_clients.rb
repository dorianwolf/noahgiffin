class CreateStudioClients < ActiveRecord::Migration
  def change
    create_table :studio_clients do |t|
      t.string :artist
      t.string :image
      t.string :album
      t.string :role

      t.timestamps null: false
    end
  end
end
