class AddTrackIdToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :track_id, :integer
    add_foreign_key :students, :tracks
  end
end
