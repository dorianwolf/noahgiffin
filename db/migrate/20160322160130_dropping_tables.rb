class DroppingTables < ActiveRecord::Migration
  def up
    drop_table :lives
    drop_table :studios
    drop_table :tracks
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
