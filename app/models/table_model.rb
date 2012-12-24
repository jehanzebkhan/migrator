class TableModel
	attr_reader :column_names, :table_name, :data

	def initialize (table_name, column_names, data)
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
end