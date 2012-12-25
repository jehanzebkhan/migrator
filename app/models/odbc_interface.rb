require 'win32ole'
class OdbcInterface
    attr_accessor :connection_url, :errors

    def initialize(conn_url=nil)
        @connection_url = conn_url
        @errors = []
    end


    def get_data(table_name)
        begin
        recordset = get_record_set table_name
        column_names = get_column_names recordset
        data = nil
            data = recordset.GetRows.transpose
        rescue Exception => e
            @errors << "#{table_name}"
        end
        recordset.Close if recordset
        TableModel.new table_name, column_names, data
    end

    def get_all_table_data
        table_models = []
        catalog = WIN32OLE.new("ADOX.Catalog")
        catalog.ActiveConnection = get_connection
        catalog.tables.each do |t|
            if t.type == "TABLE"
                table_models << get_data(t.name)
                p "Fetch complete: #{t.name}"
            end
        end
        table_models
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