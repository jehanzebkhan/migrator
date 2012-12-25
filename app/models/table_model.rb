class TableModel
	attr_reader :column_names, :table_name, :data

	def initialize (table_name, column_names, data)
		@column_names = column_names
		@table_name = table_name
		@data = data
		p "@data.size: #{@data.size}" unless data.blank?
	end

	def formatted_column_names
		@column_names.collect do |column_name|
			name= column_name.gsub('fld', '')
			name.underscore
		end
	end

	def data_hash
		hash_array = {}
		@data.each_with_index do |data_value, row_index|
			data_hash = {}
			data_value.each_with_index do |value, index|
				data_hash.merge!(@column_names[index].underscore.to_sym => value) 
			end
			hash_array.merge(row_index => data_hash) unless data_hash.blank?
		end unless @data.blank?
		hash_array
	end

	def to_model
		model_name.constantize.new data_hash
	end

	def model_name
		formatted_table_name.classify
	end

	def formatted_table_name
		@table_name.gsub('dbo_', '').tableize
	end
end