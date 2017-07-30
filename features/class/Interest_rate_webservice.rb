require 'savon'


class Interest
   attr_accessor :url
    def Interest_rate(url)
      p "The link for webservice",url
      @client = Savon.client(
          :wsdl => url,
          :open_timeout => 10,
          :read_timeout=>10,
          :log => false
      )
      print "Temp_method1 URL ",url,"\n"
      @operations_temp = @client.operations
      p "operation of temp is",@operations_temp
    end







end