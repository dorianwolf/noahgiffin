class AddSoundcloudToLiveClients < ActiveRecord::Migration
  def change
    add_column :live_clients, :soundcloud, :string
  end
end
