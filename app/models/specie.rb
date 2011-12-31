class Specie < ActiveRecord::Base
attr_accessible :specie_name, :sex, :location, :county, :origin, :quantity, :observer, :record_type, :reference, :comment, :grid_reference, :start_date, :end_date, :determiner
end
