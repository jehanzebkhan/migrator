class ModelGenerator

	def generate table_models
		table_models.each_with_index do |table_model, index|
			model_string = "rails generate model #{table_model.model_name} "
			model_string << add_columns(table_model.column_names)
			system model_string
			# system "rake db:migrate db:test:prepare"
			model_object = table_model.to_model
			# p "model_object: #{model_object.inspect}"
			# model_object.save
		end
	end

	def add_columns column_names
		column_string = ""
		column_names.compact.each do |name|
			column_string << name_and_type(name)
			column_string << " "
		end unless column_names.blank?
		column_string
	end

	def name_and_type column_name 
		if column_name.downcase.end_with? 'id'
			"#{column_name.underscore}:integer" 
		else
			"#{column_name.underscore}:string"
		end
	end

end