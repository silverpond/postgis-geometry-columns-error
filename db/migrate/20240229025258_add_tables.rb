class AddTables < ActiveRecord::Migration[7.1]
  def change
    enable_extension 'postgis'

    Que.migrate!(version: 7)

    create_table :items do |t|
      t.geometry :location, null: true
    end
  end
end
