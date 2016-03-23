class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.belongs_to :studio_client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
