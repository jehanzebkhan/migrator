require 'rubygems'
require 'rails/all'

namespace :import_db do
	desc 'import all the tables from the avetms mdb file.'
	task 'mdb' => [:environment] do
		p "Importing database..."
		p "Printing All Table names"
		odbc = OdbcInterface.new 'G:\tt\avms2.accdb'
		p "odbc.connection_url: #{odbc.connection_url}"
		table_names = APP_CONFIG['table_names']
		table_models = []
		table_names.split(",").each do |table_name|
			table_models << odbc.get_data(table_name)
			p "Fetch complete for #{table_name}"
		end
		p "Unsuccessfull Table Import Count: #{odbc.errors.size}"
		p "Unsuccessfull Tables name: #{odbc.errors.to_s}"
		p "Successfull Table Import Count: #{table_models.size}"
		p "Database import complete..."
	end
end