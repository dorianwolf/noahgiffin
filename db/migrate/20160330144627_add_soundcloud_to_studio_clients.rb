class AddSoundcloudToStudioClients < ActiveRecord::Migration
  def change
    add_column :studio_clients, :soundcloud, :string
  end
end
