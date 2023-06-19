class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :Name, limit: 100
      t.text :Desc
      t.string :logo

      t.timestamps
    end
    add_index :tracks, :Name, unique: true
  end
end
