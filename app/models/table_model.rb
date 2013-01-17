class TableModel
	attr_reader :column_names, :table_name, :data

	def initialize (table_name, column_names, data = nil)
		@column_names = column_names
		@table_name = table_name
		@data = data
	end

	def formatted_column_names
		@column_names.collect do |column_name|
			name= column_name.gsub('fld', '')
			name.underscore
		end
	end

	def populate_models
		begin
			odbc = OdbcInterface.new APP_CONFIG['database_path']
			rows = odbc.get_data @table_name
			p "#{@table_name}:size:#{rows.count}"
			rows.each do |row|
				model = model_name.constantize.new
				column_names.each_with_index do |column_name, index|
					name = column_name.gsub('fld', '').underscore
					model.send("#{name}=", row[index])
				end
				model.save!
			end
		rescue Exception => e
			p e.message
			puts e.backtrace.inspect
		end
	end

	def to_models
		model = model_name.constantize.new data_hash.first
	end

	def model_name
		formatted_table_name.classify
	end

	def formatted_table_name
		name = @table_name.gsub('dbo_', '').gsub('tbl_', '').tableize
	end
end