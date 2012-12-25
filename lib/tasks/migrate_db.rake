require 'rubygems'
require 'rails/all'

namespace :import_db do
	desc 'import all the tables from the avetms mdb file.'
	task 'odbc' => [:environment] do
		p "Importing database..."
		p "Printing All Table names"
		odbc = OdbcInterface.new APP_CONFIG['database_path']
		table_models = odbc.get_all_table_data
		ModelGenerator.new.generate table_models
		p "Unsuccessfull Table Import Count: #{odbc.errors.size}"
		# p "Unsuccessfull Tables name: #{odbc.errors.to_s}"
		p "Successfull Table Import Count: #{table_models.size}"
		p "Database import complete..."
	end
end