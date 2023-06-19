class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |e|
      e.string :Name, unique: true
      e.string :Desc, null: true
      e.string :Logo
      e.timestamps
    end
  end
end
