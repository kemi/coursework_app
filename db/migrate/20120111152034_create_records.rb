class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :name
      t.string :sex
      t.string :location
      t.string :county
      t.string :origin
      t.string :quantity
      t.string :observer
      t.type :grid
      t.string :type
      t.string :reference
      t.date :startdate
      t.date :enddate
      t.date :determiner
      t.string :comment

      t.timestamps
    end
  end
end
