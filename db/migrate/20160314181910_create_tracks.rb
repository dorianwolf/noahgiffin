class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.belongs_to :studio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
