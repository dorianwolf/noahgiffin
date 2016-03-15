class CreateLiveClients < ActiveRecord::Migration
  def change
    create_table :live_clients do |t|
      t.string :artist
      t.string :image
      t.string :contact

      t.timestamps null: false
    end
  end
end
