class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |e|
      e.string :Name
      e.integer :Age
      e.string :IDno  
      e.timestamps
    end
  end
end
