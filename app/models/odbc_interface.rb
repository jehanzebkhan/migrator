require 'win32ole'
class OdbcInterface
    attr_accessor :connection_url, :errors

    def initialize(conn_url=nil)
        @connection_url = conn_url
        @errors = []
    end


    def get_table_models(table_name)
        table_model = nil
        recordset = get_record_set table_name
        column_names = get_column_names recordset
        recordset.Close if recordset
        table_model = TableModel.new table_name, column_names
        table_model
    end

    def get_data(table_name)
        begin
            recordset = get_record_set table_name
            recordset.GetRows.transpose
        rescue Exception => e
            @errors << "unable to load data for: #{table_name}"
        end
    end

    def get_all_table_data
        selected_names = ["dbo_Address", "dbo_ApprenticeshipCentre", "dbo_Course", "dbo_CourseBusinessEntity", "dbo_CourseClassification", "dbo_Employer", "dbo_Employment", "dbo_Guardian", "dbo_OperatorTeam", "dbo_PreviousApprenticeship", "dbo_PriorEmployment", "dbo_Qualification", "dbo_QualificationClassification", "dbo_Reason", "dbo_RTO", "dbo_School", "dbo_SchoolLocality", "dbo_SchoolUserView", "dbo_Student", "dbo_StudentQualification", "dbo_TradeArea", "dbo_TrainingContract"]
        table_models = []
        catalog = WIN32OLE.new("ADOX.Catalog")
        catalog.ActiveConnection = get_connection
        table_names = ''
        catalog.tables.each do |t|
            if t.type == "TABLE" && selected_names.include?(t.name)
                begin
                    table_models << get_table_models(t.name) if t.name.count('\\') == 0
                rescue Exception => e
                    @errors << e.message
                end
            end
        end
        table_models.compact
    end

    private
    def get_connection
        @connection ||= open_connection
    end
    def open_connection
        connection_string =  'Provider=Microsoft.Ace.OLEDB.12.0; Persist Security Info = False;Data Source='
        connection_string << @connection_url
        connection_string << ';User Id=admin;Password=;'
        connection = WIN32OLE.new('ADODB.Connection')
        connection.Open(connection_string)
        connection
    end

    def get_column_names recordset
        column_names = []
        recordset.Fields.each do |field|
            column_names << field.Name
        end
        column_names
    end

    def fetch_data recordset
        
    end

    def get_record_set table_name
        recordset = WIN32OLE.new('ADODB.Recordset')
        recordset.Open(get_sql(table_name), get_connection)
        recordset
    end

    def get_sql table_name
        "SELECT * FROM #{table_name}"
    end

    def execute(sql)
        @connection.Execute(sql)
    end

    def close
        @connection.Close
    end
end