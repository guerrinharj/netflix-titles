class CreateTitles < ActiveRecord::Migration[6.0]
  def change
    create_table :titles do |t|
      t.integer :show_id
      t.string :type
      t.string :name
      t.string :director, array: true, default: []
      t.string :cast, array: true, default: []
      t.string :country, array: true, default: []
      t.date :date_added
      t.integer :release_year
      t.string :duration
      t.string :listed_in, array: true, default: []
      t.timestamps
    end
  end
end
