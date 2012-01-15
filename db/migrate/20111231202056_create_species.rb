class CreateSpecies < ActiveRecord::Migration
 # def change
  def self.up
    create_table :Species do |t|
      t.string :name
      t.string :Sex
      t.string :Location
      t.string :County
      t.integer :Quantity
      t.string :Origin
      t.string :Observer
      t.string :Record_type
      t.string :Reference
      t.string :Comment
      t.string :Grid_reference
      t.date :Start_date
      t.date :End_date
      t.string :Determiner

      t.timestamps
    end
    
  end
 def self.down
   drop_table :Species
end

end
